// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Answers _$$_AnswersFromJson(Map<String, dynamic> json) => _$_Answers(
      userId: json['userId'] as String?,
      bucketId: json['bucketId'] as String?,
      completed: json['completed'] as bool?,
      joined: json['joined'] as bool?,
      answers: (json['answers'] as List<dynamic>?)
          ?.map((e) => QuestionAnswer.fromJson(e as Map<String, dynamic>))
          .toList(),
      nickName: json['nickName'] as String?,
      fullName: json['fullName'] as String?,
      email: json['email'] as String?,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$$_AnswersToJson(_$_Answers instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'bucketId': instance.bucketId,
      'completed': instance.completed,
      'joined': instance.joined,
      'answers': instance.answers,
      'nickName': instance.nickName,
      'fullName': instance.fullName,
      'email': instance.email,
      'avatar': instance.avatar,
    };

_$_QuestionAnswer _$$_QuestionAnswerFromJson(Map<String, dynamic> json) =>
    _$_QuestionAnswer(
      question: json['question'] as String?,
      answer: json['answer'] as String?,
    );

Map<String, dynamic> _$$_QuestionAnswerToJson(_$_QuestionAnswer instance) =>
    <String, dynamic>{
      'question': instance.question,
      'answer': instance.answer,
    };
