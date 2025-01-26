part of 'forget_password_bloc.dart';

@freezed
class ForgotPasswordEvent with _$ForgotPasswordEvent {
  const factory ForgotPasswordEvent.forgotPassword({
    required String emailAddress,
  }) = ForgotPassword;
}
