import 'package:freezed_annotation/freezed_annotation.dart';
part 'questions.freezed.dart';

part 'questions.g.dart';

@freezed
class Questions with _$Questions{
  const factory Questions({
    String? name,
    List<String>? variants,
}) = _Questions;
  factory Questions.fromJson(Map<String, dynamic> json) => _$QuestionsFromJson(json);
}