part of 'questionnarie_bloc.dart';

@freezed
class QuestionnarieState with _$QuestionnarieState {
  const QuestionnarieState._();

  List<Bucket>? get bucket =>
      maybeMap(loaded: (state) => state.bucket, orElse: () => null);

  const factory QuestionnarieState.initial() = _Initial;

  const factory QuestionnarieState.loading() = _Loading;

  const factory QuestionnarieState.loaded({List<Bucket>? bucket}) = _Loaded;

  const factory QuestionnarieState.success() = _Success;

  const factory QuestionnarieState.error({required String error}) = _Error;

  const factory QuestionnarieState.searchLoading() = _SearchLoading;

  const factory QuestionnarieState.searchError({required String error}) =
      _SearchError;
}
