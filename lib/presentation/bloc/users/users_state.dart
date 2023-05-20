part of 'users_bloc.dart';

@freezed
class UsersState with _$UsersState {
  const UsersState._();

  List<UserModel>? get users => maybeMap(
    loaded: (state)=> state.users,
      orElse: () => null,);

  const factory UsersState.initial() = _Initial;

  const factory UsersState.loading() = _Loading;

  const factory UsersState.loaded({List<UserModel>? users}) = _Loaded;

  const factory UsersState.success() = _Success;

  const factory UsersState.error({required String error}) = _Error;

  const factory UsersState.searchLoading() = _SearchLoading;

  const factory UsersState.searchError({required String error}) = _SearchError;
}
