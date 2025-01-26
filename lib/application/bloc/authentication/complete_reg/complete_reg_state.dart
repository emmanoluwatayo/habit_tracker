part of 'complete_reg_bloc.dart';

@freezed
class CompleteRegState with _$CompleteRegState {
  const factory CompleteRegState({
    required ProcessingStatus processingStatus,
    required CustomError error,
  }) = _CompleteRegState;

  factory CompleteRegState.initial() => CompleteRegState(
        processingStatus: ProcessingStatus.initial,
        error: CustomError.initial(),
      );
}
