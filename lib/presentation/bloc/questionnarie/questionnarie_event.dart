part of 'questionnarie_bloc.dart';

@freezed
class QuestionnarieEvent with _$QuestionnarieEvent {
  const factory QuestionnarieEvent.init() = _Init;
  const factory QuestionnarieEvent.addBucket() = _AddBucket;
  const factory QuestionnarieEvent.setBucket({required Bucket bucket,required String? bucketId}) = _SetBucket;
  const factory QuestionnarieEvent.updateCategory({required String bucketId,required String category}) = _UpdateCategory;
  const factory QuestionnarieEvent.searchByName({required String name,required String category}) = _SearchByName;
  const factory QuestionnarieEvent.sortByCategory({required String category}) = _SortByCategory;

}
