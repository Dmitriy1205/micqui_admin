import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/constants/exceptions.dart';
import '../../../data/repositories/auth_repository.dart';

part 'sign_in_event.dart';

part 'sign_in_state.dart';

part 'sign_in_bloc.freezed.dart';

class SigninBloc extends Bloc<SignInEvent, SignInState> {
  final AuthRepository auth;

  SigninBloc({required this.auth}) : super(const SignInState.initial()) {
    on<SignInEvent>(_mapBlocToState);
  }

  Future<void> _mapBlocToState(SignInEvent event, Emitter<SignInState> emit) =>
      event.map(
        signInWithEmailAndPassword: (e) => _signUpWithEmailAndPassword(e, emit),
      );

  Future<void> _signUpWithEmailAndPassword(
      SignInEvent event, Emitter<SignInState> emit) async {
    emit(const SignInState.loading());

    try {
      await auth.signIn(
        email: event.email.toString(),
        password: event.password.toString(),
      );
      emit(const SignInState.success());
    } on BadRequestException catch (e) {
      emit(SignInState.error(error: e.message));
    }
  }
}
