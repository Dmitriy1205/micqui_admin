part of 'bucket_bloc.dart';

@freezed
class BucketState with _$BucketState {
  const BucketState._();

  bool? get isPublished =>
      maybeMap(loaded: (state) => state.isPublished, orElse: () => null);
  Bucket? get bucket =>
      maybeMap(loaded: (state) => state.bucket, orElse: () => null);
  List<Questions>? get questions =>
      maybeMap(loaded: (state) => state.questions, orElse: () => null);

  const factory BucketState.initial() = _Initial;

  const factory BucketState.loading() = _Loading;

  const factory BucketState.loaded({List<Questions>? questions, Bucket? bucket,bool? isPublished}) = _Loaded;

  const factory BucketState.success() = _Success;
  const factory BucketState.isPublished() = _IsPublished;

  const factory BucketState.error({required String error}) = _Error;

  const factory BucketState.searchLoading() = _SearchLoading;

  const factory BucketState.searchError({required String error}) = _SearchError;
}
