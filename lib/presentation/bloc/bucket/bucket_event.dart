part of 'bucket_bloc.dart';

@freezed
class BucketEvent with _$BucketEvent {
  const factory BucketEvent.init({required String? bucketId}) = _Init;

  const factory BucketEvent.addQuestion({required Bucket? bucket}) =
      _AddQuestion;

  const factory BucketEvent.setQuestion(
      {required String bucketId,
      required Questions questions,
      Bucket? bucket,
      List<Questions>? stateQuestions}) = _SetQuestion;

  const factory BucketEvent.addVariant() = _AddVariant;

  const factory BucketEvent.searchByName(
      {required String name, required String category}) = _SearchByName;

  const factory BucketEvent.removeFromRelease(
      {required String bucketId,
      Bucket? bucket,
      List<Questions>? stateQuestions}) = _RemoveFromRelease;

  const factory BucketEvent.publish({required String bucketId}) = _Publish;

  const factory BucketEvent.deleteQuestion(
      {required String name, required String category}) = _DeleteQuestion;
}
