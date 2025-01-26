part of 'auth_bloc.dart';


@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.authChanges({required fb_auth.User? user}) =
      AuthChangeEvent;

  const factory AuthenticationEvent.signOut() = SignOutEvent;
}