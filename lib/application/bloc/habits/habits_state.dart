part of 'habits_bloc.dart';

@freezed
class HabitsState with _$HabitsState {
  const factory HabitsState({
    required ProcessingStatus processingStatus,
    required CustomError error,
    required List<Map<String, dynamic>> habitsList,
    required Map<String, int> progress,
    required List<String> labels,
    required Map<String, dynamic> statistics,
  }) = _HabitsState;

  factory HabitsState.initial() => HabitsState(
        processingStatus: ProcessingStatus.initial,
        error: CustomError.initial(),
        habitsList: [],
        progress: {},
        labels: [],
        statistics: {},
      );
}
