part of 'bucket_bloc.dart';

@freezed
class BucketState with _$BucketState {
  const BucketState._();

  bool? get isPublished =>
      maybeMap(loaded: (state) => state.isPublished, orElse: () => null);

  Bucket? get bucket =>
      maybeMap(loaded: (state) => state.bucket, orElse: () => null);

  Questions? get questions =>
      maybeMap(questionAdded: (state) => state.questions, orElse: () => null);

  Answer? get answer =>
      maybeMap(answerAdded: (state) => state.answer, orElse: () => null);

  List<Questions> get questionsList =>
      maybeMap(loaded: (state) => state.questionsList, orElse: () => []);

  const factory BucketState.initial() = _Initial;

  const factory BucketState.loading() = _Loading;

  const factory BucketState.loaded(
      {@Default([])List<Questions> questionsList,
      Bucket? bucket,
      bool? isPublished}) = _Loaded;

  const factory BucketState.questionAdded({Questions? questions}) =
      _QuestionAdded;

  const factory BucketState.answerAdded({Questions? question, required int questionIndex}) = _AnswerAdded;

  const factory BucketState.success() = _Success;

  const factory BucketState.isPublished({required bool isPublished}) =
      _IsPublished;

  const factory BucketState.error({required String error}) = _Error;

  const factory BucketState.searchLoading() = _SearchLoading;

  const factory BucketState.searchError({required String error}) = _SearchError;

  const factory BucketState.searchLoaded(
      {@Default([]) List<Questions> questionsList,
      Bucket? bucket,
      bool? isPublished}) = _SearchLoaded;
}
