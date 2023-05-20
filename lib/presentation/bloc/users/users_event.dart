part of 'users_bloc.dart';

@freezed
class UsersEvent with _$UsersEvent {
  const factory UsersEvent.fetchUsers() = _FetchUsers;
  const factory UsersEvent.searchByName({required String name,required String role}) = _SearchByName;
  const factory UsersEvent.sortByCategory({required String category}) = _SortByCategory;
  const factory UsersEvent.deleteUser({required String userId}) = _DeleteUser;
}
