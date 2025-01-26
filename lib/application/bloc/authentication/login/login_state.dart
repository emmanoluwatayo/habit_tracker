part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required ProcessingStatus processingStatus,
    required CustomError error,
  }) = _LoginState;

  factory LoginState.initial() => LoginState(
        processingStatus: ProcessingStatus.initial,
        error: CustomError.initial(),
      );
}
