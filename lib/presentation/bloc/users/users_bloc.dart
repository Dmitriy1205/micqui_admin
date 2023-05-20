import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:micqui_admin/core/constants/exceptions.dart';
import 'package:micqui_admin/data/models/user/user_model.dart';
import 'package:micqui_admin/data/repositories/users_repository.dart';

part 'users_event.dart';

part 'users_state.dart';

part 'users_bloc.freezed.dart';

class UsersBloc extends Bloc<UsersEvent, UsersState> {
  final UsersRepository repo;

  UsersBloc({required this.repo}) : super(const UsersState.initial()) {
    on<UsersEvent>(_mapBlocToState);
    // add(UsersEvent.fetchUsers());
  }

  Future<void> _mapBlocToState(
      UsersEvent event, Emitter<UsersState> emit) async {
    await event.map(
      fetchUsers: (e) => _fetchUsers(e, emit),
      searchByName: (e) => _searchUserByName(e, emit),
      sortByCategory: (e) => _sortByCategory(e, emit),
      deleteUser: (e) => _deleteUser(e, emit),
    );
  }

  Future<void> _fetchUsers(_FetchUsers event, Emitter<UsersState> emit) async {
    emit(const UsersState.loading());
    try {
      List<UserModel>? users = await repo.getUsers();
      print(users);
      emit(UsersState.loaded(users: users));
    } on BadRequestException catch (e) {
      emit(UsersState.error(error: e.message));
    }
  }

  Future<void> _searchUserByName(
      _SearchByName event, Emitter<UsersState> emit) async {
    emit(const UsersState.searchLoading());
    final users = await repo.sort(event.role);

    if (event.name.isEmpty) {
      emit(UsersState.loaded(users: users));
    } else {
      List<UserModel> foundedUsers = users!
          .where((e) =>
              e.fullName!.toLowerCase().contains(event.name.toLowerCase()))
          .toList();
      if (foundedUsers.isEmpty) {
        emit(const UsersState.searchError(error: 'No Match Items'));
      } else {
        emit(UsersState.loaded(users: foundedUsers));
      }
    }
  }

  Future<void> _sortByCategory(
      _SortByCategory event, Emitter<UsersState> emit) async {
    final users = await repo.sort(event.category);
    emit(UsersState.loaded(users: users));
  }

  Future<void> _deleteUser(_DeleteUser event, Emitter<UsersState> emit) async {
    emit(const UsersState.loading());
    try {
      final users = await repo.deleteUser(userId: event.userId);
      emit(UsersState.loaded(users: users));
    } on BadRequestException catch (e) {
      emit(UsersState.error(error: e.message));
    }
  }
}
