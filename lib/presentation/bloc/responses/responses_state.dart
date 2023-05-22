part of 'responses_bloc.dart';

@freezed
class ResponsesState with _$ResponsesState {
  const ResponsesState._();

  List<Questions>? get questions =>
      maybeMap(loaded: (state) => state.questions, orElse: () => []);



  const factory ResponsesState.initial() = _Initial;

  const factory ResponsesState.loading() = _Loading;

  const factory ResponsesState.loaded({List<Questions>? questions}) =
      _Loaded;

  const factory ResponsesState.searchLoading() = _SearchLoading;

  const factory ResponsesState.searchError({required String error}) =
      _SearchError;

  const factory ResponsesState.error({required String error}) = _Error;
}
