part of 'edit_user_bloc.dart';

@freezed
class EditUserEvent with _$EditUserEvent {
  const factory EditUserEvent.updateFields({
    Uint8List? file,
    required String image,
    required String nickName,
    required String fullName,
    required String companyName,
    required String role,
    required String userId,
  }) = _UpdateFields;

  const factory EditUserEvent.getImage({Uint8List? image}) = _GetImage;
}
