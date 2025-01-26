part of 'registration_bloc.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState({
    required ProcessingStatus processingStatus,
    required CustomError error,
  }) = _RegistrationState;

  factory RegistrationState.initial() => RegistrationState(
        processingStatus: ProcessingStatus.initial,
        error: CustomError.initial(),
      );
}
