import 'package:micqui_admin/core/constants/exceptions.dart';
import 'package:micqui_admin/core/services/firestore_sevice.dart';

import '../../core/constants/strings.dart';
import '../models/user/user_model.dart';

class UsersRepository {
  final FirestoreService firestore;
  List<UserModel>? users = [];

  UsersRepository({required this.firestore});

  Future<List<UserModel>?> getUsers() async {
    try {
      final data = await firestore.readAllFields(collectionPath: 'users');
      return data.docs
          .map((e) => UserModel.fromJson(e.data()['profile']))
          .toList();
    } on Exception catch (e) {
      throw BadRequestException(message: e.toString());
    }
  }

  Future<List<UserModel>?> sort(String value) async {
    final data = await getUsers();
    users = data!;
    if (value == AppStrings.manager) {
      users!.removeWhere((element) => element.role == AppStrings.employee);
    } else if (value == AppStrings.employee) {
      users!.removeWhere((element) => element.role == AppStrings.manager);
    }
    return data;
  }

  Future<List<UserModel>?> deleteUser({required String userId}) async {
    try {
      await firestore
          .deleteDocById(collectionPath: 'users', id: userId)
          .then((value) async => users = await getUsers());
      return users;
    } on Exception catch (e) {
      throw BadRequestException(message: e.toString());
    }
  }

  Future<void> updateProfileFields(String id, data) async {
    try {
      await firestore.updateFieldByName(
          collectionName: 'users',
          docId: id,
          nameFieldToUpdate: 'profile',
          data: data);
    } on Exception catch (e) {
      throw BadRequestException(message: e.toString());
    }
  }
}
