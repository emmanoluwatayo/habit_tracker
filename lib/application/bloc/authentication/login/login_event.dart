part of 'login_bloc.dart';


@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.loginWithEmailAndPassword({
    required String emailAddress,
    required String password,
    required BuildContext context,
  }) = LoginWithEmailAndPassword;
}
