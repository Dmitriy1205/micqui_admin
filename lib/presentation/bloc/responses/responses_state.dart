part of 'responses_bloc.dart';

@freezed
class ResponsesState with _$ResponsesState {
  const ResponsesState._();

  List<Questions>? get questions =>
      maybeMap(loaded: (state) => state.questions, orElse: () => []);

  int? get completedQuiz =>
      maybeMap(loaded: (state) => state.completedQuiz, orElse: () => null);

  int? get joined =>
      maybeMap(loaded: (state) => state.joined, orElse: () => null);

  const factory ResponsesState.initial() = _Initial;

  const factory ResponsesState.loading() = _Loading;

  const factory ResponsesState.loaded({List<Questions>? questions,int? completedQuiz ,int? joined}) =
      _Loaded;

  const factory ResponsesState.searchLoading() = _SearchLoading;

  const factory ResponsesState.searchError({required String error}) =
      _SearchError;

  const factory ResponsesState.error({required String error}) = _Error;
}
