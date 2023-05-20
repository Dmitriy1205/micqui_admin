import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:micqui_admin/data/models/answer/answer.dart';
import 'package:micqui_admin/data/models/user/user_model.dart';
part 'questions.freezed.dart';

part 'questions.g.dart';

@freezed
class Questions with _$Questions{
  const factory Questions({
    String? id,
    String? name,
    @Default([]) List<QuestionAnswer> variants,
    @Default([]) List<UserModel> users,
}) = _Questions;
  factory Questions.fromJson(Map<String, dynamic> json) => _$QuestionsFromJson(json);
}