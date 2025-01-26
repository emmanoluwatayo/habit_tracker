part of 'registration_bloc.dart';

@freezed
class RegistrationEvent with _$RegistrationEvent {
  const factory RegistrationEvent.registerWithEmailAndPassword({
    required String emailAddress,
    required String password,
    required String phoneNumber,
    required String fullName,
  }) = RegisterWithEmailAndPassword;
}
