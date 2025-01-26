part of 'forget_password_bloc.dart';

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState({
    required ProcessingStatus processingStatus,
    required CustomError error,
  }) = _ForgotPasswordState;

  factory ForgotPasswordState.initial() => ForgotPasswordState(
        processingStatus: ProcessingStatus.initial,
        error: CustomError.initial(),
      );
}
