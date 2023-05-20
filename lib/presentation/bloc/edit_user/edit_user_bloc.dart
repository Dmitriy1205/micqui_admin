import 'dart:io';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/constants/exceptions.dart';
import '../../../data/repositories/storage_repository.dart';
import '../../../data/repositories/users_repository.dart';
import '../users/users_bloc.dart';

part 'edit_user_event.dart';

part 'edit_user_state.dart';

part 'edit_user_bloc.freezed.dart';

class EditUserBloc extends Bloc<EditUserEvent, EditUserState> {
  final UsersBloc _usersBloc;
  final UsersRepository _repo;
  final StorageRepository _storage;

  EditUserBloc(
      {required UsersBloc usersBloc,
      required UsersRepository repo,
      required StorageRepository storage})
      : _usersBloc = usersBloc,
        _repo = repo,
        _storage = storage,
        super(const EditUserState.initial()) {
    on<EditUserEvent>(_mapBlocToState);
  }

  Future<void> _mapBlocToState(
      EditUserEvent event, Emitter<EditUserState> emit) async {
    await event.map(
      updateFields: (e) => _updateFields(e, emit),
      getImage: (e) => _getImage(e, emit),
    );
  }

  Future<void> _updateFields(
      _UpdateFields event, Emitter<EditUserState> emit) async {
    emit(const EditUserState.loading());
    try {
      var id = event.userId;
      String imageUrl;
      if (event.file != null) {
        String pic = await _storage.upload(event.file, 'avatars/$id/$id.png');
        imageUrl = pic;
      } else {
        imageUrl = event.image;
      }
      final nameParts = event.fullName.split(' ');
      final firstName = nameParts[0];
      final lastName = nameParts.length > 1 ? nameParts[1] : '';

      await _repo.updateProfileFields(id, {
        'avatar': imageUrl,
        'nickName': event.nickName,
        'firstName': firstName,
        'lastName': lastName,
        'role': event.role,
        'companyName': event.companyName
      });

      _usersBloc.add(const UsersEvent.fetchUsers());
      emit(const EditUserState.success());
    } on BadRequestException catch (e) {
      emit(EditUserState.error(error: e.message));
    }
  }

  Future<void> _getImage(_GetImage event, Emitter<EditUserState> emit) async {
    emit(EditUserState.initImage(image: event.image));
  }
}
