part of 'auth_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState({
    fb_auth.User? user,
    required ProcessingStatus processingStatus,
    required CustomError error,
  }) = _AuthenticationState;

  factory AuthenticationState.unknown() => AuthenticationState(
        processingStatus: ProcessingStatus.initial,
        error: CustomError.initial(),
      );
}
