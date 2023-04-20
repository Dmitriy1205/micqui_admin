part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState.initial() = _InitialState;

  const factory SignInState.loading() = _LoadingState;

  const factory SignInState.success() = _SuccesState;

  const factory SignInState.error({required String error}) = _ErrorState;
}
