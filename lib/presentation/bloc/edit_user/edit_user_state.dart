part of 'edit_user_bloc.dart';

@freezed
class EditUserState with _$EditUserState {
  Uint8List? get image =>
      maybeMap(initImage: (state) => state.image, orElse: () => null);

  const factory EditUserState.initial() = _Initial;

  const factory EditUserState.initImage({required Uint8List? image}) = _InitImage;

  const factory EditUserState.success() = _Success;

  const factory EditUserState.loading() = _Loading;

  const factory EditUserState.error({required String error}) = _Error;

  const EditUserState._();
}
