part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();

  User? get user =>
      maybeMap(authenticated: (state) => state.user, orElse: () => null);

  const factory AuthState.initial() = _Initial;

  const factory AuthState.unauthenticated() = _UnauthenticaredState;

  const factory AuthState.authenticated({required User user}) =
  _AuthenticatedState;

  const factory AuthState.undefined() = _UndefinedState;
}
