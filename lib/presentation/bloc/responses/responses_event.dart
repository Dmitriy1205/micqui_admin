part of 'responses_bloc.dart';

@freezed
class ResponsesEvent with _$ResponsesEvent {
  const factory ResponsesEvent.init({required String? bucketId}) = _Init;

  const factory ResponsesEvent.searchByName(
      {required String name, required String? bucketId}) = _SearchByName;
}
