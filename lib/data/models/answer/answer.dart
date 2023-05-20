import 'package:freezed_annotation/freezed_annotation.dart';
part 'answer.freezed.dart';

part 'answer.g.dart';

@freezed
class Answers with _$Answers {
  const factory Answers({
    String? userId,
    String? bucketId,
    bool? completed,
    bool? joined,
    List<QuestionAnswer>? answers,
    String? nickName,
    String? fullName,
    String? email,
    String? avatar,
  }) = _Answers;

  factory Answers.fromJson(Map<String, dynamic> json) =>
      _$AnswersFromJson(json);
}

@freezed
class QuestionAnswer with _$QuestionAnswer {
  const factory QuestionAnswer({
    String? question,
    String? answer,
  }) = _QuestionAnswer;

  factory QuestionAnswer.fromJson(Map<String, dynamic> json) =>
      _$QuestionAnswerFromJson(json);
}
