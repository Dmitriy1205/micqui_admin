import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';

part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
 const UserModel._();

  String? get fullName => "$firstName  $lastName";

  bool get isInitialized => firstName != null && lastName != null && country != null && role != null && companyName != null;

  const factory UserModel({
    String? id,
    String? nickName,
    String? firstName,
    String? lastName,
    String? avatar,
    String? email,
    String? country,
    String? role,
    String? companyName,
    Map<String, dynamic>? property,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
