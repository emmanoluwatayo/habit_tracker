part of 'habits_bloc.dart';

@freezed
class HabitsEvent with _$HabitsEvent {
  const factory HabitsEvent.addHabit({
    required String title,
    required String frequency,
    required DateTime time,
    List<String>? days,
  }) = AddHabit;

  const factory HabitsEvent.editHabit({
    required String habitId,
    required String title,
    required String frequency,
    required DateTime time,
    List<String>? days,
  }) = EditHabit;

  const factory HabitsEvent.deleteHabit(
    String habitId,
  ) = DeleteHabit;

  const factory HabitsEvent.fetchHabits() = FetchHabits;

  const factory HabitsEvent.markHabitAsDone({
    required String habitId,
    required DateTime completedDate,
  }) = MarkHabitAsDone;

  // New events
  const factory HabitsEvent.fetchProgress({required bool isWeekly}) =
      FetchProgress;
  const factory HabitsEvent.fetchStatistics() = FetchStatistics;
}
