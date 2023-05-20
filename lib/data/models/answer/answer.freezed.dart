// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'answer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Answers _$AnswersFromJson(Map<String, dynamic> json) {
  return _Answers.fromJson(json);
}

/// @nodoc
mixin _$Answers {
  String? get userId => throw _privateConstructorUsedError;
  String? get bucketId => throw _privateConstructorUsedError;
  bool? get completed => throw _privateConstructorUsedError;
  bool? get joined => throw _privateConstructorUsedError;
  List<QuestionAnswer>? get answers => throw _privateConstructorUsedError;
  String? get nickName => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswersCopyWith<Answers> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswersCopyWith<$Res> {
  factory $AnswersCopyWith(Answers value, $Res Function(Answers) then) =
      _$AnswersCopyWithImpl<$Res, Answers>;
  @useResult
  $Res call(
      {String? userId,
      String? bucketId,
      bool? completed,
      bool? joined,
      List<QuestionAnswer>? answers,
      String? nickName,
      String? fullName,
      String? email,
      String? avatar});
}

/// @nodoc
class _$AnswersCopyWithImpl<$Res, $Val extends Answers>
    implements $AnswersCopyWith<$Res> {
  _$AnswersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? bucketId = freezed,
    Object? completed = freezed,
    Object? joined = freezed,
    Object? answers = freezed,
    Object? nickName = freezed,
    Object? fullName = freezed,
    Object? email = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      bucketId: freezed == bucketId
          ? _value.bucketId
          : bucketId // ignore: cast_nullable_to_non_nullable
              as String?,
      completed: freezed == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool?,
      joined: freezed == joined
          ? _value.joined
          : joined // ignore: cast_nullable_to_non_nullable
              as bool?,
      answers: freezed == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<QuestionAnswer>?,
      nickName: freezed == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnswersCopyWith<$Res> implements $AnswersCopyWith<$Res> {
  factory _$$_AnswersCopyWith(
          _$_Answers value, $Res Function(_$_Answers) then) =
      __$$_AnswersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? userId,
      String? bucketId,
      bool? completed,
      bool? joined,
      List<QuestionAnswer>? answers,
      String? nickName,
      String? fullName,
      String? email,
      String? avatar});
}

/// @nodoc
class __$$_AnswersCopyWithImpl<$Res>
    extends _$AnswersCopyWithImpl<$Res, _$_Answers>
    implements _$$_AnswersCopyWith<$Res> {
  __$$_AnswersCopyWithImpl(_$_Answers _value, $Res Function(_$_Answers) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? bucketId = freezed,
    Object? completed = freezed,
    Object? joined = freezed,
    Object? answers = freezed,
    Object? nickName = freezed,
    Object? fullName = freezed,
    Object? email = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_$_Answers(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      bucketId: freezed == bucketId
          ? _value.bucketId
          : bucketId // ignore: cast_nullable_to_non_nullable
              as String?,
      completed: freezed == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool?,
      joined: freezed == joined
          ? _value.joined
          : joined // ignore: cast_nullable_to_non_nullable
              as bool?,
      answers: freezed == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<QuestionAnswer>?,
      nickName: freezed == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Answers implements _Answers {
  const _$_Answers(
      {this.userId,
      this.bucketId,
      this.completed,
      this.joined,
      final List<QuestionAnswer>? answers,
      this.nickName,
      this.fullName,
      this.email,
      this.avatar})
      : _answers = answers;

  factory _$_Answers.fromJson(Map<String, dynamic> json) =>
      _$$_AnswersFromJson(json);

  @override
  final String? userId;
  @override
  final String? bucketId;
  @override
  final bool? completed;
  @override
  final bool? joined;
  final List<QuestionAnswer>? _answers;
  @override
  List<QuestionAnswer>? get answers {
    final value = _answers;
    if (value == null) return null;
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? nickName;
  @override
  final String? fullName;
  @override
  final String? email;
  @override
  final String? avatar;

  @override
  String toString() {
    return 'Answers(userId: $userId, bucketId: $bucketId, completed: $completed, joined: $joined, answers: $answers, nickName: $nickName, fullName: $fullName, email: $email, avatar: $avatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Answers &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.bucketId, bucketId) ||
                other.bucketId == bucketId) &&
            (identical(other.completed, completed) ||
                other.completed == completed) &&
            (identical(other.joined, joined) || other.joined == joined) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      bucketId,
      completed,
      joined,
      const DeepCollectionEquality().hash(_answers),
      nickName,
      fullName,
      email,
      avatar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnswersCopyWith<_$_Answers> get copyWith =>
      __$$_AnswersCopyWithImpl<_$_Answers>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnswersToJson(
      this,
    );
  }
}

abstract class _Answers implements Answers {
  const factory _Answers(
      {final String? userId,
      final String? bucketId,
      final bool? completed,
      final bool? joined,
      final List<QuestionAnswer>? answers,
      final String? nickName,
      final String? fullName,
      final String? email,
      final String? avatar}) = _$_Answers;

  factory _Answers.fromJson(Map<String, dynamic> json) = _$_Answers.fromJson;

  @override
  String? get userId;
  @override
  String? get bucketId;
  @override
  bool? get completed;
  @override
  bool? get joined;
  @override
  List<QuestionAnswer>? get answers;
  @override
  String? get nickName;
  @override
  String? get fullName;
  @override
  String? get email;
  @override
  String? get avatar;
  @override
  @JsonKey(ignore: true)
  _$$_AnswersCopyWith<_$_Answers> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestionAnswer _$QuestionAnswerFromJson(Map<String, dynamic> json) {
  return _QuestionAnswer.fromJson(json);
}

/// @nodoc
mixin _$QuestionAnswer {
  String? get question => throw _privateConstructorUsedError;
  String? get answer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionAnswerCopyWith<QuestionAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionAnswerCopyWith<$Res> {
  factory $QuestionAnswerCopyWith(
          QuestionAnswer value, $Res Function(QuestionAnswer) then) =
      _$QuestionAnswerCopyWithImpl<$Res, QuestionAnswer>;
  @useResult
  $Res call({String? question, String? answer});
}

/// @nodoc
class _$QuestionAnswerCopyWithImpl<$Res, $Val extends QuestionAnswer>
    implements $QuestionAnswerCopyWith<$Res> {
  _$QuestionAnswerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = freezed,
    Object? answer = freezed,
  }) {
    return _then(_value.copyWith(
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuestionAnswerCopyWith<$Res>
    implements $QuestionAnswerCopyWith<$Res> {
  factory _$$_QuestionAnswerCopyWith(
          _$_QuestionAnswer value, $Res Function(_$_QuestionAnswer) then) =
      __$$_QuestionAnswerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? question, String? answer});
}

/// @nodoc
class __$$_QuestionAnswerCopyWithImpl<$Res>
    extends _$QuestionAnswerCopyWithImpl<$Res, _$_QuestionAnswer>
    implements _$$_QuestionAnswerCopyWith<$Res> {
  __$$_QuestionAnswerCopyWithImpl(
      _$_QuestionAnswer _value, $Res Function(_$_QuestionAnswer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = freezed,
    Object? answer = freezed,
  }) {
    return _then(_$_QuestionAnswer(
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionAnswer implements _QuestionAnswer {
  const _$_QuestionAnswer({this.question, this.answer});

  factory _$_QuestionAnswer.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionAnswerFromJson(json);

  @override
  final String? question;
  @override
  final String? answer;

  @override
  String toString() {
    return 'QuestionAnswer(question: $question, answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionAnswer &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, question, answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionAnswerCopyWith<_$_QuestionAnswer> get copyWith =>
      __$$_QuestionAnswerCopyWithImpl<_$_QuestionAnswer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionAnswerToJson(
      this,
    );
  }
}

abstract class _QuestionAnswer implements QuestionAnswer {
  const factory _QuestionAnswer(
      {final String? question, final String? answer}) = _$_QuestionAnswer;

  factory _QuestionAnswer.fromJson(Map<String, dynamic> json) =
      _$_QuestionAnswer.fromJson;

  @override
  String? get question;
  @override
  String? get answer;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionAnswerCopyWith<_$_QuestionAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}
