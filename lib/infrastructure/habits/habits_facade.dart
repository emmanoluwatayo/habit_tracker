import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:habit_tracker/domain/habits/i_habits_facade.dart';
import 'package:habit_tracker/domain/model/custom_error/custom_error.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IHabitFacade)
class HabitsFacade implements IHabitFacade {
  final FirebaseFirestore firestore;
  final FirebaseAuth firebaseAuth;

  const HabitsFacade({
    required this.firestore,
    required this.firebaseAuth,
  });

  /// Add a new habit to Firestore
  @override
  Future<void> addHabit({
    required String title,
    required String frequency,
    required DateTime time,
    List<String>? days,
  }) async {
    String userId = firebaseAuth.currentUser!.uid;

    try {
      final habitDoc =
          firestore.collection('users').doc(userId).collection('habits').doc();

      await habitDoc.set({
        'habitID': habitDoc.id,
        'title': title,
        'frequency': frequency,
        'time': Timestamp.fromDate(time),
        'days': days ?? [],
        'completedDates': [],
        'streak': 0,
        'lastCompletedDate': null,
        'userId': userId,
      });
    } on FirebaseAuthException catch (e) {
      throw CustomError(
        errorMsg: "Error adding habit: ${e.toString()}",
        code: e.code,
        plugin: e.plugin,
      );
    }
  }

  /// Edit an existing habit in Firestore
  @override
  Future<void> editHabit({
    required String habitId,
    required String title,
    required String frequency,
    required DateTime time,
    List<String>? days,
  }) async {
    String userId = firebaseAuth.currentUser!.uid;

    try {
      await firestore
          .collection('users')
          .doc(userId)
          .collection('habits')
          .doc(habitId)
          .update({
        'title': title,
        'frequency': frequency,
        'time': Timestamp.fromDate(time),
        'days': days ?? [],
      });
    } on FirebaseAuthException catch (e) {
      throw CustomError(
        errorMsg: "Error editing habit: ${e.toString()}",
        code: e.code,
        plugin: e.plugin,
      );
    }
  }

  /// Delete a habit from Firestore
  @override
  Future<void> deleteHabit(
    String habitId,
  ) async {
    String userId = firebaseAuth.currentUser!.uid;
    try {
      await firestore
          .collection('users')
          .doc(userId)
          .collection('habits')
          .doc(habitId)
          .delete();
    } on FirebaseAuthException catch (e) {
      throw CustomError(
          errorMsg: "Error deleting habit: ${e.toString()}",
          code: e.code,
          plugin: e.plugin);
    }
  }

  /// Fetch habits for the current user
  @override
  Stream<List<Map<String, dynamic>>> fetchHabits() {
    String userId = firebaseAuth.currentUser!.uid;

    return firestore
        .collection('users')
        .doc(userId)
        .collection('habits')
        .where('userId', isEqualTo: userId)
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => doc.data() as Map<String, dynamic>)
            .toList());
  }

  /// Mark habit as done for a specific day
  @override
  Future<void> markHabitAsDone(
    String habitId,
    DateTime completedDate,
  ) async {
    String userId = firebaseAuth.currentUser!.uid;

    try {
      final habitDoc = firestore
          .collection('users')
          .doc(userId)
          .collection('habits')
          .doc(habitId);
      final snapshot = await habitDoc.get();

      if (snapshot.exists) {
        final data = snapshot.data()!;
        List<Timestamp> completedDates =
            List<Timestamp>.from(data['completedDates'] ?? []);
        DateTime? lastCompletedDate =
            (data['lastCompletedDate'] as Timestamp?)?.toDate();
        int streak = data['streak'] ?? 0;

        final formattedDate = DateTime(
            completedDate.year, completedDate.month, completedDate.day);
        if (completedDates
            .any((date) => date.toDate().isAtSameMomentAs(formattedDate))) {
          throw const CustomError(
            errorMsg: "Habit already marked as done for this day.",
            code: "habit-already-done",
            plugin: "Habit error",
          );
        }

        if (lastCompletedDate != null &&
            formattedDate.difference(lastCompletedDate).inDays == 1) {
          streak += 1;
        } else {
          streak = 1;
        }

        completedDates.add(Timestamp.fromDate(formattedDate));

        await habitDoc.update({
          'completedDates': completedDates,
          'streak': streak,
          'lastCompletedDate': Timestamp.fromDate(formattedDate),
        });
      }
    } catch (e) {
      throw CustomError(
        errorMsg: "Error marking habit as done: ${e.toString()}",
        code: "mark-habit-error",
        plugin: "Mark Habit errors",
      );
    }
  }

  /// Fetch weekly or monthly progress for habits
  @override
  Future<Map<String, dynamic>> fetchProgress({
    required bool isWeekly,
  }) async {
    String userId = firebaseAuth.currentUser!.uid;
    try {
      final snapshot = await firestore
          .collection('users')
          .doc(userId)
          .collection('habits')
          .where('userId', isEqualTo: userId)
          .get();

      if (snapshot.docs.isEmpty) return {'progress': {}, 'labels': []};

      final now = DateTime.now();
      final startDate = isWeekly
          ? now.subtract(Duration(days: now.weekday - 1)) // Start of week
          : DateTime(now.year, now.month, 1); // Start of month

      final endDate = isWeekly
          ? startDate.add(const Duration(days: 6)) // End of week
          : DateTime(now.year, now.month + 1, 0); // End of month

      Map<String, int> progress = {}; // Map to track habit completions
      List<String> labels = []; // For chart labels (e.g., days of week)

      // Initialize labels
      DateTime current = startDate;
      while (current.isBefore(endDate) || current.isAtSameMomentAs(endDate)) {
        labels.add("${current.month}/${current.day}");
        current = current.add(const Duration(days: 1));
      }

      for (var doc in snapshot.docs) {
        final data = doc.data();
        final List<Timestamp> completedDates =
            List<Timestamp>.from(data['completedDates'] ?? []);
        final String habitTitle = data['title'];

        for (var timestamp in completedDates) {
          DateTime completedDate = timestamp.toDate();
          if (completedDate
                  .isAfter(startDate.subtract(const Duration(days: 1))) &&
              completedDate.isBefore(endDate.add(const Duration(days: 1)))) {
            final formattedDate = "${completedDate.month}/${completedDate.day}";
            progress[formattedDate] =
                (progress[formattedDate] ?? 0) + 1; // Increment progress
          }
        }
      }

      return {'progress': progress, 'labels': labels};
    } catch (e) {
      throw CustomError(
        errorMsg: "Error fetching progress: ${e.toString()}",
        code: "fetch-progress-error",
        plugin: 'fetch-progress-plugin',
      );
    }
  }

  /// Fetch statistics like most consistent habits and longest streak
  @override
  Future<Map<String, dynamic>> fetchStatistics() async {
    String userId = firebaseAuth.currentUser!.uid;

    try {
      final snapshot = await firestore
          .collection('users')
          .doc(userId)
          .collection('habits')
          .where('userId', isEqualTo: userId)
          .get();

      if (snapshot.docs.isEmpty) return {};

      String mostConsistentHabit = '';
      String longestStreakHabit = '';
      int maxStreak = 0;
      int maxCompletions = 0;

      for (var doc in snapshot.docs) {
        final data = doc.data();
        final String habitTitle = data['title'];
        final int streak = data['streak'] ?? 0;
        final List completedDates = data['completedDates'] ?? [];

        // Find longest streak
        if (streak > maxStreak) {
          maxStreak = streak;
          longestStreakHabit = habitTitle;
        }

        // Find most consistent habit
        if (completedDates.length > maxCompletions) {
          maxCompletions = completedDates.length;
          mostConsistentHabit = habitTitle;
        }
      }

      return {
        'mostConsistentHabit': mostConsistentHabit,
        'longestStreakHabit': longestStreakHabit,
        'maxStreak': maxStreak,
        'maxCompletions': maxCompletions,
      };
    } catch (e) {
      throw CustomError(
        errorMsg: "Error fetching statistics: ${e.toString()}",
        code: "fetch-statistics-error",
        plugin: 'fetch-statistics-plugin',
      );
    }
  }
}
