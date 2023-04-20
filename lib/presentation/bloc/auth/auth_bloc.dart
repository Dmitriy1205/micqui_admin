import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/repositories/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;

  AuthBloc({required this.authRepository}) : super(const AuthState.initial()) {
    on<AuthEvent>(_mapAuthBlocToState);
    authRepository.authStateChange.listen((User? user) {
      add(AuthEvent.initUser(user: user));
    });
  }

  Future<void> _mapAuthBlocToState(AuthEvent event, Emitter<AuthState> emit) =>
      event.map(
        initUser: (e) => _initUser(e, emit),
        logout: (e) => _logout(e, emit),
      );

  Future<void> _logout(_LogoutEvent event, Emitter<AuthState> emit) async {
    await authRepository.logout();
  }

  Future<void> _initUser(_InitUserEvent event, Emitter<AuthState> emit) async {
    if (event.user == null) {
      emit(const AuthState.unauthenticated());
    } else {
      emit(AuthState.authenticated(user: event.user!));
    }
  }

}
