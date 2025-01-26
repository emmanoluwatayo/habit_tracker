abstract class IHabitFacade {
  Future<void> addHabit({
    required String title,
    required String frequency,
    required DateTime time,
    List<String>? days,
  });

  Future<void> editHabit({
    required String habitId,
    required String title,
    required String frequency,
    required DateTime time,
    List<String>? days,
  });

  Future<void> deleteHabit(
    String habitId,
  );

  Future<void> markHabitAsDone(
    String habitId,
    DateTime completedDate,
  );

  // New method to fetch staff members for a particular hospital
  Stream<List<Map<String, dynamic>>> fetchHabits();

  Future<Map<String, dynamic>> fetchProgress({
    required bool isWeekly,
  });

  Future<Map<String, dynamic>> fetchStatistics();
}
