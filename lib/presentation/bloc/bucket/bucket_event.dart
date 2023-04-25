part of 'bucket_bloc.dart';

@freezed
class BucketEvent with _$BucketEvent {
  const factory BucketEvent.init({required String? bucketId}) = _Init;

  const factory BucketEvent.addQuestion({required List<Questions>? questions}) = _AddQuestion;

  const factory BucketEvent.setQuestion({
    required String bucketId,
    required int? questionIndex,
    required String? questionId,
    required Questions question,
  }) = _SetQuestion;

  const factory BucketEvent.addAnswer({
    required Questions question,
    required int questionIndex,
    required List<Answer>? answerList,
    required List<Questions>? questions,
  }) = _AddAnswer;

  const factory BucketEvent.setAnswer({
    required String bucketId,
    required int? questionIndex,
    required Questions question,
    required Answer answer,
  }) = _SetAnswer;

  const factory BucketEvent.searchByName(
      {required String name, required Bucket? bucket}) = _SearchByName;

  const factory BucketEvent.removeFromRelease({required String bucketId}) =
      _RemoveFromRelease;

  const factory BucketEvent.publish({required String bucketId}) = _Publish;

  const factory BucketEvent.deleteQuestion(
      {required String bucketId,
      required int index,
      required List<Questions>? questions}) = _DeleteQuestion;

  const factory BucketEvent.deleteAnswer(
      {required String bucketId,
        required Questions existedQuestions,
        required int indexToDelete,
        required List<Questions>? questions}) = _DeleteAnswer;
}
