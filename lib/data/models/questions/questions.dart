import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:micqui_admin/data/models/answer/answer.dart';
part 'questions.freezed.dart';

part 'questions.g.dart';

@freezed
class Questions with _$Questions{
  const factory Questions({
    String? id,
    String? name,
    List<Answer>? variants,
}) = _Questions;
  factory Questions.fromJson(Map<String, dynamic> json) => _$QuestionsFromJson(json);
}