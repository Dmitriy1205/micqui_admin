part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.logout() = _LogoutEvent;

  const factory AuthEvent.initUser({required User? user}) = _InitUserEvent;
}
