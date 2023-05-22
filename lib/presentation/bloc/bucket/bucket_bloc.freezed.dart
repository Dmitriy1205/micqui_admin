// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bucket_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BucketEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? bucketId) init,
    required TResult Function(List<Questions>? questions) addQuestion,
    required TResult Function(String bucketId, int? questionIndex,
            String? questionId, Questions question)
        setQuestion,
    required TResult Function(Questions question, int questionIndex,
            List<Answers>? answerList, List<Questions>? questions)
        addAnswer,
    required TResult Function(String bucketId, int? questionIndex,
            Questions question, Answers answer)
        setAnswer,
    required TResult Function(String name, Bucket? bucket) searchByName,
    required TResult Function(String bucketId) removeFromRelease,
    required TResult Function(String bucketId) publish,
    required TResult Function(
            String bucketId, int index, List<Questions>? questions)
        deleteQuestion,
    required TResult Function(String bucketId, Questions existedQuestions,
            int indexToDelete, List<Questions>? questions)
        deleteAnswer,
    required TResult Function(String bucketId) deleteBucket,
    required TResult Function(String bucketId) getStatistics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? bucketId)? init,
    TResult? Function(List<Questions>? questions)? addQuestion,
    TResult? Function(String bucketId, int? questionIndex, String? questionId,
            Questions question)?
        setQuestion,
    TResult? Function(Questions question, int questionIndex,
            List<Answers>? answerList, List<Questions>? questions)?
        addAnswer,
    TResult? Function(String bucketId, int? questionIndex, Questions question,
            Answers answer)?
        setAnswer,
    TResult? Function(String name, Bucket? bucket)? searchByName,
    TResult? Function(String bucketId)? removeFromRelease,
    TResult? Function(String bucketId)? publish,
    TResult? Function(String bucketId, int index, List<Questions>? questions)?
        deleteQuestion,
    TResult? Function(String bucketId, Questions existedQuestions,
            int indexToDelete, List<Questions>? questions)?
        deleteAnswer,
    TResult? Function(String bucketId)? deleteBucket,
    TResult? Function(String bucketId)? getStatistics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? bucketId)? init,
    TResult Function(List<Questions>? questions)? addQuestion,
    TResult Function(String bucketId, int? questionIndex, String? questionId,
            Questions question)?
        setQuestion,
    TResult Function(Questions question, int questionIndex,
            List<Answers>? answerList, List<Questions>? questions)?
        addAnswer,
    TResult Function(String bucketId, int? questionIndex, Questions question,
            Answers answer)?
        setAnswer,
    TResult Function(String name, Bucket? bucket)? searchByName,
    TResult Function(String bucketId)? removeFromRelease,
    TResult Function(String bucketId)? publish,
    TResult Function(String bucketId, int index, List<Questions>? questions)?
        deleteQuestion,
    TResult Function(String bucketId, Questions existedQuestions,
            int indexToDelete, List<Questions>? questions)?
        deleteAnswer,
    TResult Function(String bucketId)? deleteBucket,
    TResult Function(String bucketId)? getStatistics,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddQuestion value) addQuestion,
    required TResult Function(_SetQuestion value) setQuestion,
    required TResult Function(_AddAnswer value) addAnswer,
    required TResult Function(_SetAnswer value) setAnswer,
    required TResult Function(_SearchByName value) searchByName,
    required TResult Function(_RemoveFromRelease value) removeFromRelease,
    required TResult Function(_Publish value) publish,
    required TResult Function(_DeleteQuestion value) deleteQuestion,
    required TResult Function(_DeleteAnswer value) deleteAnswer,
    required TResult Function(_DeleteFullBucket value) deleteBucket,
    required TResult Function(_GetStatistics value) getStatistics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddQuestion value)? addQuestion,
    TResult? Function(_SetQuestion value)? setQuestion,
    TResult? Function(_AddAnswer value)? addAnswer,
    TResult? Function(_SetAnswer value)? setAnswer,
    TResult? Function(_SearchByName value)? searchByName,
    TResult? Function(_RemoveFromRelease value)? removeFromRelease,
    TResult? Function(_Publish value)? publish,
    TResult? Function(_DeleteQuestion value)? deleteQuestion,
    TResult? Function(_DeleteAnswer value)? deleteAnswer,
    TResult? Function(_DeleteFullBucket value)? deleteBucket,
    TResult? Function(_GetStatistics value)? getStatistics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddQuestion value)? addQuestion,
    TResult Function(_SetQuestion value)? setQuestion,
    TResult Function(_AddAnswer value)? addAnswer,
    TResult Function(_SetAnswer value)? setAnswer,
    TResult Function(_SearchByName value)? searchByName,
    TResult Function(_RemoveFromRelease value)? removeFromRelease,
    TResult Function(_Publish value)? publish,
    TResult Function(_DeleteQuestion value)? deleteQuestion,
    TResult Function(_DeleteAnswer value)? deleteAnswer,
    TResult Function(_DeleteFullBucket value)? deleteBucket,
    TResult Function(_GetStatistics value)? getStatistics,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BucketEventCopyWith<$Res> {
  factory $BucketEventCopyWith(
          BucketEvent value, $Res Function(BucketEvent) then) =
      _$BucketEventCopyWithImpl<$Res, BucketEvent>;
}

/// @nodoc
class _$BucketEventCopyWithImpl<$Res, $Val extends BucketEvent>
    implements $BucketEventCopyWith<$Res> {
  _$BucketEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitCopyWith<$Res> {
  factory _$$_InitCopyWith(_$_Init value, $Res Function(_$_Init) then) =
      __$$_InitCopyWithImpl<$Res>;
  @useResult
  $Res call({String? bucketId});
}

/// @nodoc
class __$$_InitCopyWithImpl<$Res>
    extends _$BucketEventCopyWithImpl<$Res, _$_Init>
    implements _$$_InitCopyWith<$Res> {
  __$$_InitCopyWithImpl(_$_Init _value, $Res Function(_$_Init) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bucketId = freezed,
  }) {
    return _then(_$_Init(
      bucketId: freezed == bucketId
          ? _value.bucketId
          : bucketId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Init implements _Init {
  const _$_Init({required this.bucketId});

  @override
  final String? bucketId;

  @override
  String toString() {
    return 'BucketEvent.init(bucketId: $bucketId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Init &&
            (identical(other.bucketId, bucketId) ||
                other.bucketId == bucketId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bucketId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitCopyWith<_$_Init> get copyWith =>
      __$$_InitCopyWithImpl<_$_Init>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? bucketId) init,
    required TResult Function(List<Questions>? questions) addQuestion,
    required TResult Function(String bucketId, int? questionIndex,
            String? questionId, Questions question)
        setQuestion,
    required TResult Function(Questions question, int questionIndex,
            List<Answers>? answerList, List<Questions>? questions)
        addAnswer,
    required TResult Function(String bucketId, int? questionIndex,
            Questions question, Answers answer)
        setAnswer,
    required TResult Function(String name, Bucket? bucket) searchByName,
    required TResult Function(String bucketId) removeFromRelease,
    required TResult Function(String bucketId) publish,
    required TResult Function(
            String bucketId, int index, List<Questions>? questions)
        deleteQuestion,
    required TResult Function(String bucketId, Questions existedQuestions,
            int indexToDelete, List<Questions>? questions)
        deleteAnswer,
    required TResult Function(String bucketId) deleteBucket,
    required TResult Function(String bucketId) getStatistics,
  }) {
    return init(bucketId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? bucketId)? init,
    TResult? Function(List<Questions>? questions)? addQuestion,
    TResult? Function(String bucketId, int? questionIndex, String? questionId,
            Questions question)?
        setQuestion,
    TResult? Function(Questions question, int questionIndex,
            List<Answers>? answerList, List<Questions>? questions)?
        addAnswer,
    TResult? Function(String bucketId, int? questionIndex, Questions question,
            Answers answer)?
        setAnswer,
    TResult? Function(String name, Bucket? bucket)? searchByName,
    TResult? Function(String bucketId)? removeFromRelease,
    TResult? Function(String bucketId)? publish,
    TResult? Function(String bucketId, int index, List<Questions>? questions)?
        deleteQuestion,
    TResult? Function(String bucketId, Questions existedQuestions,
            int indexToDelete, List<Questions>? questions)?
        deleteAnswer,
    TResult? Function(String bucketId)? deleteBucket,
    TResult? Function(String bucketId)? getStatistics,
  }) {
    return init?.call(bucketId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? bucketId)? init,
    TResult Function(List<Questions>? questions)? addQuestion,
    TResult Function(String bucketId, int? questionIndex, String? questionId,
            Questions question)?
        setQuestion,
    TResult Function(Questions question, int questionIndex,
            List<Answers>? answerList, List<Questions>? questions)?
        addAnswer,
    TResult Function(String bucketId, int? questionIndex, Questions question,
            Answers answer)?
        setAnswer,
    TResult Function(String name, Bucket? bucket)? searchByName,
    TResult Function(String bucketId)? removeFromRelease,
    TResult Function(String bucketId)? publish,
    TResult Function(String bucketId, int index, List<Questions>? questions)?
        deleteQuestion,
    TResult Function(String bucketId, Questions existedQuestions,
            int indexToDelete, List<Questions>? questions)?
        deleteAnswer,
    TResult Function(String bucketId)? deleteBucket,
    TResult Function(String bucketId)? getStatistics,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(bucketId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddQuestion value) addQuestion,
    required TResult Function(_SetQuestion value) setQuestion,
    required TResult Function(_AddAnswer value) addAnswer,
    required TResult Function(_SetAnswer value) setAnswer,
    required TResult Function(_SearchByName value) searchByName,
    required TResult Function(_RemoveFromRelease value) removeFromRelease,
    required TResult Function(_Publish value) publish,
    required TResult Function(_DeleteQuestion value) deleteQuestion,
    required TResult Function(_DeleteAnswer value) deleteAnswer,
    required TResult Function(_DeleteFullBucket value) deleteBucket,
    required TResult Function(_GetStatistics value) getStatistics,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddQuestion value)? addQuestion,
    TResult? Function(_SetQuestion value)? setQuestion,
    TResult? Function(_AddAnswer value)? addAnswer,
    TResult? Function(_SetAnswer value)? setAnswer,
    TResult? Function(_SearchByName value)? searchByName,
    TResult? Function(_RemoveFromRelease value)? removeFromRelease,
    TResult? Function(_Publish value)? publish,
    TResult? Function(_DeleteQuestion value)? deleteQuestion,
    TResult? Function(_DeleteAnswer value)? deleteAnswer,
    TResult? Function(_DeleteFullBucket value)? deleteBucket,
    TResult? Function(_GetStatistics value)? getStatistics,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddQuestion value)? addQuestion,
    TResult Function(_SetQuestion value)? setQuestion,
    TResult Function(_AddAnswer value)? addAnswer,
    TResult Function(_SetAnswer value)? setAnswer,
    TResult Function(_SearchByName value)? searchByName,
    TResult Function(_RemoveFromRelease value)? removeFromRelease,
    TResult Function(_Publish value)? publish,
    TResult Function(_DeleteQuestion value)? deleteQuestion,
    TResult Function(_DeleteAnswer value)? deleteAnswer,
    TResult Function(_DeleteFullBucket value)? deleteBucket,
    TResult Function(_GetStatistics value)? getStatistics,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements BucketEvent {
  const factory _Init({required final String? bucketId}) = _$_Init;

  String? get bucketId;
  @JsonKey(ignore: true)
  _$$_InitCopyWith<_$_Init> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddQuestionCopyWith<$Res> {
  factory _$$_AddQuestionCopyWith(
          _$_AddQuestion value, $Res Function(_$_AddQuestion) then) =
      __$$_AddQuestionCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Questions>? questions});
}

/// @nodoc
class __$$_AddQuestionCopyWithImpl<$Res>
    extends _$BucketEventCopyWithImpl<$Res, _$_AddQuestion>
    implements _$$_AddQuestionCopyWith<$Res> {
  __$$_AddQuestionCopyWithImpl(
      _$_AddQuestion _value, $Res Function(_$_AddQuestion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questions = freezed,
  }) {
    return _then(_$_AddQuestion(
      questions: freezed == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Questions>?,
    ));
  }
}

/// @nodoc

class _$_AddQuestion implements _AddQuestion {
  const _$_AddQuestion({required final List<Questions>? questions})
      : _questions = questions;

  final List<Questions>? _questions;
  @override
  List<Questions>? get questions {
    final value = _questions;
    if (value == null) return null;
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BucketEvent.addQuestion(questions: $questions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddQuestion &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_questions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddQuestionCopyWith<_$_AddQuestion> get copyWith =>
      __$$_AddQuestionCopyWithImpl<_$_AddQuestion>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? bucketId) init,
    required TResult Function(List<Questions>? questions) addQuestion,
    required TResult Function(String bucketId, int? questionIndex,
            String? questionId, Questions question)
        setQuestion,
    required TResult Function(Questions question, int questionIndex,
            List<Answers>? answerList, List<Questions>? questions)
        addAnswer,
    required TResult Function(String bucketId, int? questionIndex,
            Questions question, Answers answer)
        setAnswer,
    required TResult Function(String name, Bucket? bucket) searchByName,
    required TResult Function(String bucketId) removeFromRelease,
    required TResult Function(String bucketId) publish,
    required TResult Function(
            String bucketId, int index, List<Questions>? questions)
        deleteQuestion,
    required TResult Function(String bucketId, Questions existedQuestions,
            int indexToDelete, List<Questions>? questions)
        deleteAnswer,
    required TResult Function(String bucketId) deleteBucket,
    required TResult Function(String bucketId) getStatistics,
  }) {
    return addQuestion(questions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? bucketId)? init,
    TResult? Function(List<Questions>? questions)? addQuestion,
    TResult? Function(String bucketId, int? questionIndex, String? questionId,
            Questions question)?
        setQuestion,
    TResult? Function(Questions question, int questionIndex,
            List<Answers>? answerList, List<Questions>? questions)?
        addAnswer,
    TResult? Function(String bucketId, int? questionIndex, Questions question,
            Answers answer)?
        setAnswer,
    TResult? Function(String name, Bucket? bucket)? searchByName,
    TResult? Function(String bucketId)? removeFromRelease,
    TResult? Function(String bucketId)? publish,
    TResult? Function(String bucketId, int index, List<Questions>? questions)?
        deleteQuestion,
    TResult? Function(String bucketId, Questions existedQuestions,
            int indexToDelete, List<Questions>? questions)?
        deleteAnswer,
    TResult? Function(String bucketId)? deleteBucket,
    TResult? Function(String bucketId)? getStatistics,
  }) {
    return addQuestion?.call(questions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? bucketId)? init,
    TResult Function(List<Questions>? questions)? addQuestion,
    TResult Function(String bucketId, int? questionIndex, String? questionId,
            Questions question)?
        setQuestion,
    TResult Function(Questions question, int questionIndex,
            List<Answers>? answerList, List<Questions>? questions)?
        addAnswer,
    TResult Function(String bucketId, int? questionIndex, Questions question,
            Answers answer)?
        setAnswer,
    TResult Function(String name, Bucket? bucket)? searchByName,
    TResult Function(String bucketId)? removeFromRelease,
    TResult Function(String bucketId)? publish,
    TResult Function(String bucketId, int index, List<Questions>? questions)?
        deleteQuestion,
    TResult Function(String bucketId, Questions existedQuestions,
            int indexToDelete, List<Questions>? questions)?
        deleteAnswer,
    TResult Function(String bucketId)? deleteBucket,
    TResult Function(String bucketId)? getStatistics,
    required TResult orElse(),
  }) {
    if (addQuestion != null) {
      return addQuestion(questions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddQuestion value) addQuestion,
    required TResult Function(_SetQuestion value) setQuestion,
    required TResult Function(_AddAnswer value) addAnswer,
    required TResult Function(_SetAnswer value) setAnswer,
    required TResult Function(_SearchByName value) searchByName,
    required TResult Function(_RemoveFromRelease value) removeFromRelease,
    required TResult Function(_Publish value) publish,
    required TResult Function(_DeleteQuestion value) deleteQuestion,
    required TResult Function(_DeleteAnswer value) deleteAnswer,
    required TResult Function(_DeleteFullBucket value) deleteBucket,
    required TResult Function(_GetStatistics value) getStatistics,
  }) {
    return addQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddQuestion value)? addQuestion,
    TResult? Function(_SetQuestion value)? setQuestion,
    TResult? Function(_AddAnswer value)? addAnswer,
    TResult? Function(_SetAnswer value)? setAnswer,
    TResult? Function(_SearchByName value)? searchByName,
    TResult? Function(_RemoveFromRelease value)? removeFromRelease,
    TResult? Function(_Publish value)? publish,
    TResult? Function(_DeleteQuestion value)? deleteQuestion,
    TResult? Function(_DeleteAnswer value)? deleteAnswer,
    TResult? Function(_DeleteFullBucket value)? deleteBucket,
    TResult? Function(_GetStatistics value)? getStatistics,
  }) {
    return addQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddQuestion value)? addQuestion,
    TResult Function(_SetQuestion value)? setQuestion,
    TResult Function(_AddAnswer value)? addAnswer,
    TResult Function(_SetAnswer value)? setAnswer,
    TResult Function(_SearchByName value)? searchByName,
    TResult Function(_RemoveFromRelease value)? removeFromRelease,
    TResult Function(_Publish value)? publish,
    TResult Function(_DeleteQuestion value)? deleteQuestion,
    TResult Function(_DeleteAnswer value)? deleteAnswer,
    TResult Function(_DeleteFullBucket value)? deleteBucket,
    TResult Function(_GetStatistics value)? getStatistics,
    required TResult orElse(),
  }) {
    if (addQuestion != null) {
      return addQuestion(this);
    }
    return orElse();
  }
}

abstract class _AddQuestion implements BucketEvent {
  const factory _AddQuestion({required final List<Questions>? questions}) =
      _$_AddQuestion;

  List<Questions>? get questions;
  @JsonKey(ignore: true)
  _$$_AddQuestionCopyWith<_$_AddQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetQuestionCopyWith<$Res> {
  factory _$$_SetQuestionCopyWith(
          _$_SetQuestion value, $Res Function(_$_SetQuestion) then) =
      __$$_SetQuestionCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String bucketId,
      int? questionIndex,
      String? questionId,
      Questions question});

  $QuestionsCopyWith<$Res> get question;
}

/// @nodoc
class __$$_SetQuestionCopyWithImpl<$Res>
    extends _$BucketEventCopyWithImpl<$Res, _$_SetQuestion>
    implements _$$_SetQuestionCopyWith<$Res> {
  __$$_SetQuestionCopyWithImpl(
      _$_SetQuestion _value, $Res Function(_$_SetQuestion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bucketId = null,
    Object? questionIndex = freezed,
    Object? questionId = freezed,
    Object? question = null,
  }) {
    return _then(_$_SetQuestion(
      bucketId: null == bucketId
          ? _value.bucketId
          : bucketId // ignore: cast_nullable_to_non_nullable
              as String,
      questionIndex: freezed == questionIndex
          ? _value.questionIndex
          : questionIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      questionId: freezed == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String?,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as Questions,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $QuestionsCopyWith<$Res> get question {
    return $QuestionsCopyWith<$Res>(_value.question, (value) {
      return _then(_value.copyWith(question: value));
    });
  }
}

/// @nodoc

class _$_SetQuestion implements _SetQuestion {
  const _$_SetQuestion(
      {required this.bucketId,
      required this.questionIndex,
      required this.questionId,
      required this.question});

  @override
  final String bucketId;
  @override
  final int? questionIndex;
  @override
  final String? questionId;
  @override
  final Questions question;

  @override
  String toString() {
    return 'BucketEvent.setQuestion(bucketId: $bucketId, questionIndex: $questionIndex, questionId: $questionId, question: $question)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetQuestion &&
            (identical(other.bucketId, bucketId) ||
                other.bucketId == bucketId) &&
            (identical(other.questionIndex, questionIndex) ||
                other.questionIndex == questionIndex) &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.question, question) ||
                other.question == question));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, bucketId, questionIndex, questionId, question);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetQuestionCopyWith<_$_SetQuestion> get copyWith =>
      __$$_SetQuestionCopyWithImpl<_$_SetQuestion>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? bucketId) init,
    required TResult Function(List<Questions>? questions) addQuestion,
    required TResult Function(String bucketId, int? questionIndex,
            String? questionId, Questions question)
        setQuestion,
    required TResult Function(Questions question, int questionIndex,
            List<Answers>? answerList, List<Questions>? questions)
        addAnswer,
    required TResult Function(String bucketId, int? questionIndex,
            Questions question, Answers answer)
        setAnswer,
    required TResult Function(String name, Bucket? bucket) searchByName,
    required TResult Function(String bucketId) removeFromRelease,
    required TResult Function(String bucketId) publish,
    required TResult Function(
            String bucketId, int index, List<Questions>? questions)
        deleteQuestion,
    required TResult Function(String bucketId, Questions existedQuestions,
            int indexToDelete, List<Questions>? questions)
        deleteAnswer,
    required TResult Function(String bucketId) deleteBucket,
    required TResult Function(String bucketId) getStatistics,
  }) {
    return setQuestion(bucketId, questionIndex, questionId, question);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? bucketId)? init,
    TResult? Function(List<Questions>? questions)? addQuestion,
    TResult? Function(String bucketId, int? questionIndex, String? questionId,
            Questions question)?
        setQuestion,
    TResult? Function(Questions question, int questionIndex,
            List<Answers>? answerList, List<Questions>? questions)?
        addAnswer,
    TResult? Function(String bucketId, int? questionIndex, Questions question,
            Answers answer)?
        setAnswer,
    TResult? Function(String name, Bucket? bucket)? searchByName,
    TResult? Function(String bucketId)? removeFromRelease,
    TResult? Function(String bucketId)? publish,
    TResult? Function(String bucketId, int index, List<Questions>? questions)?
        deleteQuestion,
    TResult? Function(String bucketId, Questions existedQuestions,
            int indexToDelete, List<Questions>? questions)?
        deleteAnswer,
    TResult? Function(String bucketId)? deleteBucket,
    TResult? Function(String bucketId)? getStatistics,
  }) {
    return setQuestion?.call(bucketId, questionIndex, questionId, question);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? bucketId)? init,
    TResult Function(List<Questions>? questions)? addQuestion,
    TResult Function(String bucketId, int? questionIndex, String? questionId,
            Questions question)?
        setQuestion,
    TResult Function(Questions question, int questionIndex,
            List<Answers>? answerList, List<Questions>? questions)?
        addAnswer,
    TResult Function(String bucketId, int? questionIndex, Questions question,
            Answers answer)?
        setAnswer,
    TResult Function(String name, Bucket? bucket)? searchByName,
    TResult Function(String bucketId)? removeFromRelease,
    TResult Function(String bucketId)? publish,
    TResult Function(String bucketId, int index, List<Questions>? questions)?
        deleteQuestion,
    TResult Function(String bucketId, Questions existedQuestions,
            int indexToDelete, List<Questions>? questions)?
        deleteAnswer,
    TResult Function(String bucketId)? deleteBucket,
    TResult Function(String bucketId)? getStatistics,
    required TResult orElse(),
  }) {
    if (setQuestion != null) {
      return setQuestion(bucketId, questionIndex, questionId, question);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddQuestion value) addQuestion,
    required TResult Function(_SetQuestion value) setQuestion,
    required TResult Function(_AddAnswer value) addAnswer,
    required TResult Function(_SetAnswer value) setAnswer,
    required TResult Function(_SearchByName value) searchByName,
    required TResult Function(_RemoveFromRelease value) removeFromRelease,
    required TResult Function(_Publish value) publish,
    required TResult Function(_DeleteQuestion value) deleteQuestion,
    required TResult Function(_DeleteAnswer value) deleteAnswer,
    required TResult Function(_DeleteFullBucket value) deleteBucket,
    required TResult Function(_GetStatistics value) getStatistics,
  }) {
    return setQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddQuestion value)? addQuestion,
    TResult? Function(_SetQuestion value)? setQuestion,
    TResult? Function(_AddAnswer value)? addAnswer,
    TResult? Function(_SetAnswer value)? setAnswer,
    TResult? Function(_SearchByName value)? searchByName,
    TResult? Function(_RemoveFromRelease value)? removeFromRelease,
    TResult? Function(_Publish value)? publish,
    TResult? Function(_DeleteQuestion value)? deleteQuestion,
    TResult? Function(_DeleteAnswer value)? deleteAnswer,
    TResult? Function(_DeleteFullBucket value)? deleteBucket,
    TResult? Function(_GetStatistics value)? getStatistics,
  }) {
    return setQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddQuestion value)? addQuestion,
    TResult Function(_SetQuestion value)? setQuestion,
    TResult Function(_AddAnswer value)? addAnswer,
    TResult Function(_SetAnswer value)? setAnswer,
    TResult Function(_SearchByName value)? searchByName,
    TResult Function(_RemoveFromRelease value)? removeFromRelease,
    TResult Function(_Publish value)? publish,
    TResult Function(_DeleteQuestion value)? deleteQuestion,
    TResult Function(_DeleteAnswer value)? deleteAnswer,
    TResult Function(_DeleteFullBucket value)? deleteBucket,
    TResult Function(_GetStatistics value)? getStatistics,
    required TResult orElse(),
  }) {
    if (setQuestion != null) {
      return setQuestion(this);
    }
    return orElse();
  }
}

abstract class _SetQuestion implements BucketEvent {
  const factory _SetQuestion(
      {required final String bucketId,
      required final int? questionIndex,
      required final String? questionId,
      required final Questions question}) = _$_SetQuestion;

  String get bucketId;
  int? get questionIndex;
  String? get questionId;
  Questions get question;
  @JsonKey(ignore: true)
  _$$_SetQuestionCopyWith<_$_SetQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddAnswerCopyWith<$Res> {
  factory _$$_AddAnswerCopyWith(
          _$_AddAnswer value, $Res Function(_$_AddAnswer) then) =
      __$$_AddAnswerCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Questions question,
      int questionIndex,
      List<Answers>? answerList,
      List<Questions>? questions});

  $QuestionsCopyWith<$Res> get question;
}

/// @nodoc
class __$$_AddAnswerCopyWithImpl<$Res>
    extends _$BucketEventCopyWithImpl<$Res, _$_AddAnswer>
    implements _$$_AddAnswerCopyWith<$Res> {
  __$$_AddAnswerCopyWithImpl(
      _$_AddAnswer _value, $Res Function(_$_AddAnswer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? questionIndex = null,
    Object? answerList = freezed,
    Object? questions = freezed,
  }) {
    return _then(_$_AddAnswer(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as Questions,
      questionIndex: null == questionIndex
          ? _value.questionIndex
          : questionIndex // ignore: cast_nullable_to_non_nullable
              as int,
      answerList: freezed == answerList
          ? _value._answerList
          : answerList // ignore: cast_nullable_to_non_nullable
              as List<Answers>?,
      questions: freezed == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Questions>?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $QuestionsCopyWith<$Res> get question {
    return $QuestionsCopyWith<$Res>(_value.question, (value) {
      return _then(_value.copyWith(question: value));
    });
  }
}

/// @nodoc

class _$_AddAnswer implements _AddAnswer {
  const _$_AddAnswer(
      {required this.question,
      required this.questionIndex,
      required final List<Answers>? answerList,
      required final List<Questions>? questions})
      : _answerList = answerList,
        _questions = questions;

  @override
  final Questions question;
  @override
  final int questionIndex;
  final List<Answers>? _answerList;
  @override
  List<Answers>? get answerList {
    final value = _answerList;
    if (value == null) return null;
    if (_answerList is EqualUnmodifiableListView) return _answerList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Questions>? _questions;
  @override
  List<Questions>? get questions {
    final value = _questions;
    if (value == null) return null;
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BucketEvent.addAnswer(question: $question, questionIndex: $questionIndex, answerList: $answerList, questions: $questions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddAnswer &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.questionIndex, questionIndex) ||
                other.questionIndex == questionIndex) &&
            const DeepCollectionEquality()
                .equals(other._answerList, _answerList) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      question,
      questionIndex,
      const DeepCollectionEquality().hash(_answerList),
      const DeepCollectionEquality().hash(_questions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddAnswerCopyWith<_$_AddAnswer> get copyWith =>
      __$$_AddAnswerCopyWithImpl<_$_AddAnswer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? bucketId) init,
    required TResult Function(List<Questions>? questions) addQuestion,
    required TResult Function(String bucketId, int? questionIndex,
            String? questionId, Questions question)
        setQuestion,
    required TResult Function(Questions question, int questionIndex,
            List<Answers>? answerList, List<Questions>? questions)
        addAnswer,
    required TResult Function(String bucketId, int? questionIndex,
            Questions question, Answers answer)
        setAnswer,
    required TResult Function(String name, Bucket? bucket) searchByName,
    required TResult Function(String bucketId) removeFromRelease,
    required TResult Function(String bucketId) publish,
    required TResult Function(
            String bucketId, int index, List<Questions>? questions)
        deleteQuestion,
    required TResult Function(String bucketId, Questions existedQuestions,
            int indexToDelete, List<Questions>? questions)
        deleteAnswer,
    required TResult Function(String bucketId) deleteBucket,
    required TResult Function(String bucketId) getStatistics,
  }) {
    return addAnswer(question, questionIndex, answerList, questions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? bucketId)? init,
    TResult? Function(List<Questions>? questions)? addQuestion,
    TResult? Function(String bucketId, int? questionIndex, String? questionId,
            Questions question)?
        setQuestion,
    TResult? Function(Questions question, int questionIndex,
            List<Answers>? answerList, List<Questions>? questions)?
        addAnswer,
    TResult? Function(String bucketId, int? questionIndex, Questions question,
            Answers answer)?
        setAnswer,
    TResult? Function(String name, Bucket? bucket)? searchByName,
    TResult? Function(String bucketId)? removeFromRelease,
    TResult? Function(String bucketId)? publish,
    TResult? Function(String bucketId, int index, List<Questions>? questions)?
        deleteQuestion,
    TResult? Function(String bucketId, Questions existedQuestions,
            int indexToDelete, List<Questions>? questions)?
        deleteAnswer,
    TResult? Function(String bucketId)? deleteBucket,
    TResult? Function(String bucketId)? getStatistics,
  }) {
    return addAnswer?.call(question, questionIndex, answerList, questions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? bucketId)? init,
    TResult Function(List<Questions>? questions)? addQuestion,
    TResult Function(String bucketId, int? questionIndex, String? questionId,
            Questions question)?
        setQuestion,
    TResult Function(Questions question, int questionIndex,
            List<Answers>? answerList, List<Questions>? questions)?
        addAnswer,
    TResult Function(String bucketId, int? questionIndex, Questions question,
            Answers answer)?
        setAnswer,
    TResult Function(String name, Bucket? bucket)? searchByName,
    TResult Function(String bucketId)? removeFromRelease,
    TResult Function(String bucketId)? publish,
    TResult Function(String bucketId, int index, List<Questions>? questions)?
        deleteQuestion,
    TResult Function(String bucketId, Questions existedQuestions,
            int indexToDelete, List<Questions>? questions)?
        deleteAnswer,
    TResult Function(String bucketId)? deleteBucket,
    TResult Function(String bucketId)? getStatistics,
    required TResult orElse(),
  }) {
    if (addAnswer != null) {
      return addAnswer(question, questionIndex, answerList, questions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddQuestion value) addQuestion,
    required TResult Function(_SetQuestion value) setQuestion,
    required TResult Function(_AddAnswer value) addAnswer,
    required TResult Function(_SetAnswer value) setAnswer,
    required TResult Function(_SearchByName value) searchByName,
    required TResult Function(_RemoveFromRelease value) removeFromRelease,
    required TResult Function(_Publish value) publish,
    required TResult Function(_DeleteQuestion value) deleteQuestion,
    required TResult Function(_DeleteAnswer value) deleteAnswer,
    required TResult Function(_DeleteFullBucket value) deleteBucket,
    required TResult Function(_GetStatistics value) getStatistics,
  }) {
    return addAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddQuestion value)? addQuestion,
    TResult? Function(_SetQuestion value)? setQuestion,
    TResult? Function(_AddAnswer value)? addAnswer,
    TResult? Function(_SetAnswer value)? setAnswer,
    TResult? Function(_SearchByName value)? searchByName,
    TResult? Function(_RemoveFromRelease value)? removeFromRelease,
    TResult? Function(_Publish value)? publish,
    TResult? Function(_DeleteQuestion value)? deleteQuestion,
    TResult? Function(_DeleteAnswer value)? deleteAnswer,
    TResult? Function(_DeleteFullBucket value)? deleteBucket,
    TResult? Function(_GetStatistics value)? getStatistics,
  }) {
    return addAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddQuestion value)? addQuestion,
    TResult Function(_SetQuestion value)? setQuestion,
    TResult Function(_AddAnswer value)? addAnswer,
    TResult Function(_SetAnswer value)? setAnswer,
    TResult Function(_SearchByName value)? searchByName,
    TResult Function(_RemoveFromRelease value)? removeFromRelease,
    TResult Function(_Publish value)? publish,
    TResult Function(_DeleteQuestion value)? deleteQuestion,
    TResult Function(_DeleteAnswer value)? deleteAnswer,
    TResult Function(_DeleteFullBucket value)? deleteBucket,
    TResult Function(_GetStatistics value)? getStatistics,
    required TResult orElse(),
  }) {
    if (addAnswer != null) {
      return addAnswer(this);
    }
    return orElse();
  }
}

abstract class _AddAnswer implements BucketEvent {
  const factory _AddAnswer(
      {required final Questions question,
      required final int questionIndex,
      required final List<Answers>? answerList,
      required final List<Questions>? questions}) = _$_AddAnswer;

  Questions get question;
  int get questionIndex;
  List<Answers>? get answerList;
  List<Questions>? get questions;
  @JsonKey(ignore: true)
  _$$_AddAnswerCopyWith<_$_AddAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetAnswerCopyWith<$Res> {
  factory _$$_SetAnswerCopyWith(
          _$_SetAnswer value, $Res Function(_$_SetAnswer) then) =
      __$$_SetAnswerCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String bucketId,
      int? questionIndex,
      Questions question,
      Answers answer});

  $QuestionsCopyWith<$Res> get question;
  $AnswersCopyWith<$Res> get answer;
}

/// @nodoc
class __$$_SetAnswerCopyWithImpl<$Res>
    extends _$BucketEventCopyWithImpl<$Res, _$_SetAnswer>
    implements _$$_SetAnswerCopyWith<$Res> {
  __$$_SetAnswerCopyWithImpl(
      _$_SetAnswer _value, $Res Function(_$_SetAnswer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bucketId = null,
    Object? questionIndex = freezed,
    Object? question = null,
    Object? answer = null,
  }) {
    return _then(_$_SetAnswer(
      bucketId: null == bucketId
          ? _value.bucketId
          : bucketId // ignore: cast_nullable_to_non_nullable
              as String,
      questionIndex: freezed == questionIndex
          ? _value.questionIndex
          : questionIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as Questions,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as Answers,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $QuestionsCopyWith<$Res> get question {
    return $QuestionsCopyWith<$Res>(_value.question, (value) {
      return _then(_value.copyWith(question: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AnswersCopyWith<$Res> get answer {
    return $AnswersCopyWith<$Res>(_value.answer, (value) {
      return _then(_value.copyWith(answer: value));
    });
  }
}

/// @nodoc

class _$_SetAnswer implements _SetAnswer {
  const _$_SetAnswer(
      {required this.bucketId,
      required this.questionIndex,
      required this.question,
      required this.answer});

  @override
  final String bucketId;
  @override
  final int? questionIndex;
  @override
  final Questions question;
  @override
  final Answers answer;

  @override
  String toString() {
    return 'BucketEvent.setAnswer(bucketId: $bucketId, questionIndex: $questionIndex, question: $question, answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetAnswer &&
            (identical(other.bucketId, bucketId) ||
                other.bucketId == bucketId) &&
            (identical(other.questionIndex, questionIndex) ||
                other.questionIndex == questionIndex) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, bucketId, questionIndex, question, answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetAnswerCopyWith<_$_SetAnswer> get copyWith =>
      __$$_SetAnswerCopyWithImpl<_$_SetAnswer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? bucketId) init,
    required TResult Function(List<Questions>? questions) addQuestion,
    required TResult Function(String bucketId, int? questionIndex,
            String? questionId, Questions question)
        setQuestion,
    required TResult Function(Questions question, int questionIndex,
            List<Answers>? answerList, List<Questions>? questions)
        addAnswer,
    required TResult Function(String bucketId, int? questionIndex,
            Questions question, Answers answer)
        setAnswer,
    required TResult Function(String name, Bucket? bucket) searchByName,
    required TResult Function(String bucketId) removeFromRelease,
    required TResult Function(String bucketId) publish,
    required TResult Function(
            String bucketId, int index, List<Questions>? questions)
        deleteQuestion,
    required TResult Function(String bucketId, Questions existedQuestions,
            int indexToDelete, List<Questions>? questions)
        deleteAnswer,
    required TResult Function(String bucketId) deleteBucket,
    required TResult Function(String bucketId) getStatistics,
  }) {
    return setAnswer(bucketId, questionIndex, question, answer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? bucketId)? init,
    TResult? Function(List<Questions>? questions)? addQuestion,
    TResult? Function(String bucketId, int? questionIndex, String? questionId,
            Questions question)?
        setQuestion,
    TResult? Function(Questions question, int questionIndex,
            List<Answers>? answerList, List<Questions>? questions)?
        addAnswer,
    TResult? Function(String bucketId, int? questionIndex, Questions question,
            Answers answer)?
        setAnswer,
    TResult? Function(String name, Bucket? bucket)? searchByName,
    TResult? Function(String bucketId)? removeFromRelease,
    TResult? Function(String bucketId)? publish,
    TResult? Function(String bucketId, int index, List<Questions>? questions)?
        deleteQuestion,
    TResult? Function(String bucketId, Questions existedQuestions,
            int indexToDelete, List<Questions>? questions)?
        deleteAnswer,
    TResult? Function(String bucketId)? deleteBucket,
    TResult? Function(String bucketId)? getStatistics,
  }) {
    return setAnswer?.call(bucketId, questionIndex, question, answer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? bucketId)? init,
    TResult Function(List<Questions>? questions)? addQuestion,
    TResult Function(String bucketId, int? questionIndex, String? questionId,
            Questions question)?
        setQuestion,
    TResult Function(Questions question, int questionIndex,
            List<Answers>? answerList, List<Questions>? questions)?
        addAnswer,
    TResult Function(String bucketId, int? questionIndex, Questions question,
            Answers answer)?
        setAnswer,
    TResult Function(String name, Bucket? bucket)? searchByName,
    TResult Function(String bucketId)? removeFromRelease,
    TResult Function(String bucketId)? publish,
    TResult Function(String bucketId, int index, List<Questions>? questions)?
        deleteQuestion,
    TResult Function(String bucketId, Questions existedQuestions,
            int indexToDelete, List<Questions>? questions)?
        deleteAnswer,
    TResult Function(String bucketId)? deleteBucket,
    TResult Function(String bucketId)? getStatistics,
    required TResult orElse(),
  }) {
    if (setAnswer != null) {
      return setAnswer(bucketId, questionIndex, question, answer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddQuestion value) addQuestion,
    required TResult Function(_SetQuestion value) setQuestion,
    required TResult Function(_AddAnswer value) addAnswer,
    required TResult Function(_SetAnswer value) setAnswer,
    required TResult Function(_SearchByName value) searchByName,
    required TResult Function(_RemoveFromRelease value) removeFromRelease,
    required TResult Function(_Publish value) publish,
    required TResult Function(_DeleteQuestion value) deleteQuestion,
    required TResult Function(_DeleteAnswer value) deleteAnswer,
    required TResult Function(_DeleteFullBucket value) deleteBucket,
    required TResult Function(_GetStatistics value) getStatistics,
  }) {
    return setAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddQuestion value)? addQuestion,
    TResult? Function(_SetQuestion value)? setQuestion,
    TResult? Function(_AddAnswer value)? addAnswer,
    TResult? Function(_SetAnswer value)? setAnswer,
    TResult? Function(_SearchByName value)? searchByName,
    TResult? Function(_RemoveFromRelease value)? removeFromRelease,
    TResult? Function(_Publish value)? publish,
    TResult? Function(_DeleteQuestion value)? deleteQuestion,
    TResult? Function(_DeleteAnswer value)? deleteAnswer,
    TResult? Function(_DeleteFullBucket value)? deleteBucket,
    TResult? Function(_GetStatistics value)? getStatistics,
  }) {
    return setAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddQuestion value)? addQuestion,
    TResult Function(_SetQuestion value)? setQuestion,
    TResult Function(_AddAnswer value)? addAnswer,
    TResult Function(_SetAnswer value)? setAnswer,
    TResult Function(_SearchByName value)? searchByName,
    TResult Function(_RemoveFromRelease value)? removeFromRelease,
    TResult Function(_Publish value)? publish,
    TResult Function(_DeleteQuestion value)? deleteQuestion,
    TResult Function(_DeleteAnswer value)? deleteAnswer,
    TResult Function(_DeleteFullBucket value)? deleteBucket,
    TResult Function(_GetStatistics value)? getStatistics,
    required TResult orElse(),
  }) {
    if (setAnswer != null) {
      return setAnswer(this);
    }
    return orElse();
  }
}

abstract class _SetAnswer implements BucketEvent {
  const factory _SetAnswer(
      {required final String bucketId,
      required final int? questionIndex,
      required final Questions question,
      required final Answers answer}) = _$_SetAnswer;

  String get bucketId;
  int? get questionIndex;
  Questions get question;
  Answers get answer;
  @JsonKey(ignore: true)
  _$$_SetAnswerCopyWith<_$_SetAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchByNameCopyWith<$Res> {
  factory _$$_SearchByNameCopyWith(
          _$_SearchByName value, $Res Function(_$_SearchByName) then) =
      __$$_SearchByNameCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, Bucket? bucket});

  $BucketCopyWith<$Res>? get bucket;
}

/// @nodoc
class __$$_SearchByNameCopyWithImpl<$Res>
    extends _$BucketEventCopyWithImpl<$Res, _$_SearchByName>
    implements _$$_SearchByNameCopyWith<$Res> {
  __$$_SearchByNameCopyWithImpl(
      _$_SearchByName _value, $Res Function(_$_SearchByName) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? bucket = freezed,
  }) {
    return _then(_$_SearchByName(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      bucket: freezed == bucket
          ? _value.bucket
          : bucket // ignore: cast_nullable_to_non_nullable
              as Bucket?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BucketCopyWith<$Res>? get bucket {
    if (_value.bucket == null) {
      return null;
    }

    return $BucketCopyWith<$Res>(_value.bucket!, (value) {
      return _then(_value.copyWith(bucket: value));
    });
  }
}

/// @nodoc

class _$_SearchByName implements _SearchByName {
  const _$_SearchByName({required this.name, required this.bucket});

  @override
  final String name;
  @override
  final Bucket? bucket;

  @override
  String toString() {
    return 'BucketEvent.searchByName(name: $name, bucket: $bucket)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchByName &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.bucket, bucket) || other.bucket == bucket));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, bucket);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchByNameCopyWith<_$_SearchByName> get copyWith =>
      __$$_SearchByNameCopyWithImpl<_$_SearchByName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? bucketId) init,
    required TResult Function(List<Questions>? questions) addQuestion,
    required TResult Function(String bucketId, int? questionIndex,
            String? questionId, Questions question)
        setQuestion,
    required TResult Function(Questions question, int questionIndex,
            List<Answers>? answerList, List<Questions>? questions)
        addAnswer,
    required TResult Function(String bucketId, int? questionIndex,
            Questions question, Answers answer)
        setAnswer,
    required TResult Function(String name, Bucket? bucket) searchByName,
    required TResult Function(String bucketId) removeFromRelease,
    required TResult Function(String bucketId) publish,
    required TResult Function(
            String bucketId, int index, List<Questions>? questions)
        deleteQuestion,
    required TResult Function(String bucketId, Questions existedQuestions,
            int indexToDelete, List<Questions>? questions)
        deleteAnswer,
    required TResult Function(String bucketId) deleteBucket,
    required TResult Function(String bucketId) getStatistics,
  }) {
    return searchByName(name, bucket);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? bucketId)? init,
    TResult? Function(List<Questions>? questions)? addQuestion,
    TResult? Function(String bucketId, int? questionIndex, String? questionId,
            Questions question)?
        setQuestion,
    TResult? Function(Questions question, int questionIndex,
            List<Answers>? answerList, List<Questions>? questions)?
        addAnswer,
    TResult? Function(String bucketId, int? questionIndex, Questions question,
            Answers answer)?
        setAnswer,
    TResult? Function(String name, Bucket? bucket)? searchByName,
    TResult? Function(String bucketId)? removeFromRelease,
    TResult? Function(String bucketId)? publish,
    TResult? Function(String bucketId, int index, List<Questions>? questions)?
        deleteQuestion,
    TResult? Function(String bucketId, Questions existedQuestions,
            int indexToDelete, List<Questions>? questions)?
        deleteAnswer,
    TResult? Function(String bucketId)? deleteBucket,
    TResult? Function(String bucketId)? getStatistics,
  }) {
    return searchByName?.call(name, bucket);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? bucketId)? init,
    TResult Function(List<Questions>? questions)? addQuestion,
    TResult Function(String bucketId, int? questionIndex, String? questionId,
            Questions question)?
        setQuestion,
    TResult Function(Questions question, int questionIndex,
            List<Answers>? answerList, List<Questions>? questions)?
        addAnswer,
    TResult Function(String bucketId, int? questionIndex, Questions question,
            Answers answer)?
        setAnswer,
    TResult Function(String name, Bucket? bucket)? searchByName,
    TResult Function(String bucketId)? removeFromRelease,
    TResult Function(String bucketId)? publish,
    TResult Function(String bucketId, int index, List<Questions>? questions)?
        deleteQuestion,
    TResult Function(String bucketId, Questions existedQuestions,
            int indexToDelete, List<Questions>? questions)?
        deleteAnswer,
    TResult Function(String bucketId)? deleteBucket,
    TResult Function(String bucketId)? getStatistics,
    required TResult orElse(),
  }) {
    if (searchByName != null) {
      return searchByName(name, bucket);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddQuestion value) addQuestion,
    required TResult Function(_SetQuestion value) setQuestion,
    required TResult Function(_AddAnswer value) addAnswer,
    required TResult Function(_SetAnswer value) setAnswer,
    required TResult Function(_SearchByName value) searchByName,
    required TResult Function(_RemoveFromRelease value) removeFromRelease,
    required TResult Function(_Publish value) publish,
    required TResult Function(_DeleteQuestion value) deleteQuestion,
    required TResult Function(_DeleteAnswer value) deleteAnswer,
    required TResult Function(_DeleteFullBucket value) deleteBucket,
    required TResult Function(_GetStatistics value) getStatistics,
  }) {
    return searchByName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddQuestion value)? addQuestion,
    TResult? Function(_SetQuestion value)? setQuestion,
    TResult? Function(_AddAnswer value)? addAnswer,
    TResult? Function(_SetAnswer value)? setAnswer,
    TResult? Function(_SearchByName value)? searchByName,
    TResult? Function(_RemoveFromRelease value)? removeFromRelease,
    TResult? Function(_Publish value)? publish,
    TResult? Function(_DeleteQuestion value)? deleteQuestion,
    TResult? Function(_DeleteAnswer value)? deleteAnswer,
    TResult? Function(_DeleteFullBucket value)? deleteBucket,
    TResult? Function(_GetStatistics value)? getStatistics,
  }) {
    return searchByName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddQuestion value)? addQuestion,
    TResult Function(_SetQuestion value)? setQuestion,
    TResult Function(_AddAnswer value)? addAnswer,
    TResult Function(_SetAnswer value)? setAnswer,
    TResult Function(_SearchByName value)? searchByName,
    TResult Function(_RemoveFromRelease value)? removeFromRelease,
    TResult Function(_Publish value)? publish,
    TResult Function(_DeleteQuestion value)? deleteQuestion,
    TResult Function(_DeleteAnswer value)? deleteAnswer,
    TResult Function(_DeleteFullBucket value)? deleteBucket,
    TResult Function(_GetStatistics value)? getStatistics,
    required TResult orElse(),
  }) {
    if (searchByName != null) {
      return searchByName(this);
    }
    return orElse();
  }
}

abstract class _SearchByName implements BucketEvent {
  const factory _SearchByName(
      {required final String name,
      required final Bucket? bucket}) = _$_SearchByName;

  String get name;
  Bucket? get bucket;
  @JsonKey(ignore: true)
  _$$_SearchByNameCopyWith<_$_SearchByName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveFromReleaseCopyWith<$Res> {
  factory _$$_RemoveFromReleaseCopyWith(_$_RemoveFromRelease value,
          $Res Function(_$_RemoveFromRelease) then) =
      __$$_RemoveFromReleaseCopyWithImpl<$Res>;
  @useResult
  $Res call({String bucketId});
}

/// @nodoc
class __$$_RemoveFromReleaseCopyWithImpl<$Res>
    extends _$BucketEventCopyWithImpl<$Res, _$_RemoveFromRelease>
    implements _$$_RemoveFromReleaseCopyWith<$Res> {
  __$$_RemoveFromReleaseCopyWithImpl(
      _$_RemoveFromRelease _value, $Res Function(_$_RemoveFromRelease) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bucketId = null,
  }) {
    return _then(_$_RemoveFromRelease(
      bucketId: null == bucketId
          ? _value.bucketId
          : bucketId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RemoveFromRelease implements _RemoveFromRelease {
  const _$_RemoveFromRelease({required this.bucketId});

  @override
  final String bucketId;

  @override
  String toString() {
    return 'BucketEvent.removeFromRelease(bucketId: $bucketId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveFromRelease &&
            (identical(other.bucketId, bucketId) ||
                other.bucketId == bucketId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bucketId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoveFromReleaseCopyWith<_$_RemoveFromRelease> get copyWith =>
      __$$_RemoveFromReleaseCopyWithImpl<_$_RemoveFromRelease>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? bucketId) init,
    required TResult Function(List<Questions>? questions) addQuestion,
    required TResult Function(String bucketId, int? questionIndex,
            String? questionId, Questions question)
        setQuestion,
    required TResult Function(Questions question, int questionIndex,
            List<Answers>? answerList, List<Questions>? questions)
        addAnswer,
    required TResult Function(String bucketId, int? questionIndex,
            Questions question, Answers answer)
        setAnswer,
    required TResult Function(String name, Bucket? bucket) searchByName,
    required TResult Function(String bucketId) removeFromRelease,
    required TResult Function(String bucketId) publish,
    required TResult Function(
            String bucketId, int index, List<Questions>? questions)
        deleteQuestion,
    required TResult Function(String bucketId, Questions existedQuestions,
            int indexToDelete, List<Questions>? questions)
        deleteAnswer,
    required TResult Function(String bucketId) deleteBucket,
    required TResult Function(String bucketId) getStatistics,
  }) {
    return removeFromRelease(bucketId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? bucketId)? init,
    TResult? Function(List<Questions>? questions)? addQuestion,
    TResult? Function(String bucketId, int? questionIndex, String? questionId,
            Questions question)?
        setQuestion,
    TResult? Function(Questions question, int questionIndex,
            List<Answers>? answerList, List<Questions>? questions)?
        addAnswer,
    TResult? Function(String bucketId, int? questionIndex, Questions question,
            Answers answer)?
        setAnswer,
    TResult? Function(String name, Bucket? bucket)? searchByName,
    TResult? Function(String bucketId)? removeFromRelease,
    TResult? Function(String bucketId)? publish,
    TResult? Function(String bucketId, int index, List<Questions>? questions)?
        deleteQuestion,
    TResult? Function(String bucketId, Questions existedQuestions,
            int indexToDelete, List<Questions>? questions)?
        deleteAnswer,
    TResult? Function(String bucketId)? deleteBucket,
    TResult? Function(String bucketId)? getStatistics,
  }) {
    return removeFromRelease?.call(bucketId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? bucketId)? init,
    TResult Function(List<Questions>? questions)? addQuestion,
    TResult Function(String bucketId, int? questionIndex, String? questionId,
            Questions question)?
        setQuestion,
    TResult Function(Questions question, int questionIndex,
            List<Answers>? answerList, List<Questions>? questions)?
        addAnswer,
    TResult Function(String bucketId, int? questionIndex, Questions question,
            Answers answer)?
        setAnswer,
    TResult Function(String name, Bucket? bucket)? searchByName,
    TResult Function(String bucketId)? removeFromRelease,
    TResult Function(String bucketId)? publish,
    TResult Function(String bucketId, int index, List<Questions>? questions)?
        deleteQuestion,
    TResult Function(String bucketId, Questions existedQuestions,
            int indexToDelete, List<Questions>? questions)?
        deleteAnswer,
    TResult Function(String bucketId)? deleteBucket,
    TResult Function(String bucketId)? getStatistics,
    required TResult orElse(),
  }) {
    if (removeFromRelease != null) {
      return removeFromRelease(bucketId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddQuestion value) addQuestion,
    required TResult Function(_SetQuestion value) setQuestion,
    required TResult Function(_AddAnswer value) addAnswer,
    required TResult Function(_SetAnswer value) setAnswer,
    required TResult Function(_SearchByName value) searchByName,
    required TResult Function(_RemoveFromRelease value) removeFromRelease,
    required TResult Function(_Publish value) publish,
    required TResult Function(_DeleteQuestion value) deleteQuestion,
    required TResult Function(_DeleteAnswer value) deleteAnswer,
    required TResult Function(_DeleteFullBucket value) deleteBucket,
    required TResult Function(_GetStatistics value) getStatistics,
  }) {
    return removeFromRelease(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddQuestion value)? addQuestion,
    TResult? Function(_SetQuestion value)? setQuestion,
    TResult? Function(_AddAnswer value)? addAnswer,
    TResult? Function(_SetAnswer value)? setAnswer,
    TResult? Function(_SearchByName value)? searchByName,
    TResult? Function(_RemoveFromRelease value)? removeFromRelease,
    TResult? Function(_Publish value)? publish,
    TResult? Function(_DeleteQuestion value)? deleteQuestion,
    TResult? Function(_DeleteAnswer value)? deleteAnswer,
    TResult? Function(_DeleteFullBucket value)? deleteBucket,
    TResult? Function(_GetStatistics value)? getStatistics,
  }) {
    return removeFromRelease?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddQuestion value)? addQuestion,
    TResult Function(_SetQuestion value)? setQuestion,
    TResult Function(_AddAnswer value)? addAnswer,
    TResult Function(_SetAnswer value)? setAnswer,
    TResult Function(_SearchByName value)? searchByName,
    TResult Function(_RemoveFromRelease value)? removeFromRelease,
    TResult Function(_Publish value)? publish,
    TResult Function(_DeleteQuestion value)? deleteQuestion,
    TResult Function(_DeleteAnswer value)? deleteAnswer,
    TResult Function(_DeleteFullBucket value)? deleteBucket,
    TResult Function(_GetStatistics value)? getStatistics,
    required TResult orElse(),
  }) {
    if (removeFromRelease != null) {
      return removeFromRelease(this);
    }
    return orElse();
  }
}

abstract class _RemoveFromRelease implements BucketEvent {
  const factory _RemoveFromRelease({required final String bucketId}) =
      _$_RemoveFromRelease;

  String get bucketId;
  @JsonKey(ignore: true)
  _$$_RemoveFromReleaseCopyWith<_$_RemoveFromRelease> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PublishCopyWith<$Res> {
  factory _$$_PublishCopyWith(
          _$_Publish value, $Res Function(_$_Publish) then) =
      __$$_PublishCopyWithImpl<$Res>;
  @useResult
  $Res call({String bucketId});
}

/// @nodoc
class __$$_PublishCopyWithImpl<$Res>
    extends _$BucketEventCopyWithImpl<$Res, _$_Publish>
    implements _$$_PublishCopyWith<$Res> {
  __$$_PublishCopyWithImpl(_$_Publish _value, $Res Function(_$_Publish) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bucketId = null,
  }) {
    return _then(_$_Publish(
      bucketId: null == bucketId
          ? _value.bucketId
          : bucketId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Publish implements _Publish {
  const _$_Publish({required this.bucketId});

  @override
  final String bucketId;

  @override
  String toString() {
    return 'BucketEvent.publish(bucketId: $bucketId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Publish &&
            (identical(other.bucketId, bucketId) ||
                other.bucketId == bucketId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bucketId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PublishCopyWith<_$_Publish> get copyWith =>
      __$$_PublishCopyWithImpl<_$_Publish>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? bucketId) init,
    required TResult Function(List<Questions>? questions) addQuestion,
    required TResult Function(String bucketId, int? questionIndex,
            String? questionId, Questions question)
        setQuestion,
    required TResult Function(Questions question, int questionIndex,
            List<Answers>? answerList, List<Questions>? questions)
        addAnswer,
    required TResult Function(String bucketId, int? questionIndex,
            Questions question, Answers answer)
        setAnswer,
    required TResult Function(String name, Bucket? bucket) searchByName,
    required TResult Function(String bucketId) removeFromRelease,
    required TResult Function(String bucketId) publish,
    required TResult Function(
            String bucketId, int index, List<Questions>? questions)
        deleteQuestion,
    required TResult Function(String bucketId, Questions existedQuestions,
            int indexToDelete, List<Questions>? questions)
        deleteAnswer,
    required TResult Function(String bucketId) deleteBucket,
    required TResult Function(String bucketId) getStatistics,
  }) {
    return publish(bucketId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? bucketId)? init,
    TResult? Function(List<Questions>? questions)? addQuestion,
    TResult? Function(String bucketId, int? questionIndex, String? questionId,
            Questions question)?
        setQuestion,
    TResult? Function(Questions question, int questionIndex,
            List<Answers>? answerList, List<Questions>? questions)?
        addAnswer,
    TResult? Function(String bucketId, int? questionIndex, Questions question,
            Answers answer)?
        setAnswer,
    TResult? Function(String name, Bucket? bucket)? searchByName,
    TResult? Function(String bucketId)? removeFromRelease,
    TResult? Function(String bucketId)? publish,
    TResult? Function(String bucketId, int index, List<Questions>? questions)?
        deleteQuestion,
    TResult? Function(String bucketId, Questions existedQuestions,
            int indexToDelete, List<Questions>? questions)?
        deleteAnswer,
    TResult? Function(String bucketId)? deleteBucket,
    TResult? Function(String bucketId)? getStatistics,
  }) {
    return publish?.call(bucketId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? bucketId)? init,
    TResult Function(List<Questions>? questions)? addQuestion,
    TResult Function(String bucketId, int? questionIndex, String? questionId,
            Questions question)?
        setQuestion,
    TResult Function(Questions question, int questionIndex,
            List<Answers>? answerList, List<Questions>? questions)?
        addAnswer,
    TResult Function(String bucketId, int? questionIndex, Questions question,
            Answers answer)?
        setAnswer,
    TResult Function(String name, Bucket? bucket)? searchByName,
    TResult Function(String bucketId)? removeFromRelease,
    TResult Function(String bucketId)? publish,
    TResult Function(String bucketId, int index, List<Questions>? questions)?
        deleteQuestion,
    TResult Function(String bucketId, Questions existedQuestions,
            int indexToDelete, List<Questions>? questions)?
        deleteAnswer,
    TResult Function(String bucketId)? deleteBucket,
    TResult Function(String bucketId)? getStatistics,
    required TResult orElse(),
  }) {
    if (publish != null) {
      return publish(bucketId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddQuestion value) addQuestion,
    required TResult Function(_SetQuestion value) setQuestion,
    required TResult Function(_AddAnswer value) addAnswer,
    required TResult Function(_SetAnswer value) setAnswer,
    required TResult Function(_SearchByName value) searchByName,
    required TResult Function(_RemoveFromRelease value) removeFromRelease,
    required TResult Function(_Publish value) publish,
    required TResult Function(_DeleteQuestion value) deleteQuestion,
    required TResult Function(_DeleteAnswer value) deleteAnswer,
    required TResult Function(_DeleteFullBucket value) deleteBucket,
    required TResult Function(_GetStatistics value) getStatistics,
  }) {
    return publish(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddQuestion value)? addQuestion,
    TResult? Function(_SetQuestion value)? setQuestion,
    TResult? Function(_AddAnswer value)? addAnswer,
    TResult? Function(_SetAnswer value)? setAnswer,
    TResult? Function(_SearchByName value)? searchByName,
    TResult? Function(_RemoveFromRelease value)? removeFromRelease,
    TResult? Function(_Publish value)? publish,
    TResult? Function(_DeleteQuestion value)? deleteQuestion,
    TResult? Function(_DeleteAnswer value)? deleteAnswer,
    TResult? Function(_DeleteFullBucket value)? deleteBucket,
    TResult? Function(_GetStatistics value)? getStatistics,
  }) {
    return publish?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddQuestion value)? addQuestion,
    TResult Function(_SetQuestion value)? setQuestion,
    TResult Function(_AddAnswer value)? addAnswer,
    TResult Function(_SetAnswer value)? setAnswer,
    TResult Function(_SearchByName value)? searchByName,
    TResult Function(_RemoveFromRelease value)? removeFromRelease,
    TResult Function(_Publish value)? publish,
    TResult Function(_DeleteQuestion value)? deleteQuestion,
    TResult Function(_DeleteAnswer value)? deleteAnswer,
    TResult Function(_DeleteFullBucket value)? deleteBucket,
    TResult Function(_GetStatistics value)? getStatistics,
    required TResult orElse(),
  }) {
    if (publish != null) {
      return publish(this);
    }
    return orElse();
  }
}

abstract class _Publish implements BucketEvent {
  const factory _Publish({required final String bucketId}) = _$_Publish;

  String get bucketId;
  @JsonKey(ignore: true)
  _$$_PublishCopyWith<_$_Publish> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteQuestionCopyWith<$Res> {
  factory _$$_DeleteQuestionCopyWith(
          _$_DeleteQuestion value, $Res Function(_$_DeleteQuestion) then) =
      __$$_DeleteQuestionCopyWithImpl<$Res>;
  @useResult
  $Res call({String bucketId, int index, List<Questions>? questions});
}

/// @nodoc
class __$$_DeleteQuestionCopyWithImpl<$Res>
    extends _$BucketEventCopyWithImpl<$Res, _$_DeleteQuestion>
    implements _$$_DeleteQuestionCopyWith<$Res> {
  __$$_DeleteQuestionCopyWithImpl(
      _$_DeleteQuestion _value, $Res Function(_$_DeleteQuestion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bucketId = null,
    Object? index = null,
    Object? questions = freezed,
  }) {
    return _then(_$_DeleteQuestion(
      bucketId: null == bucketId
          ? _value.bucketId
          : bucketId // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      questions: freezed == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Questions>?,
    ));
  }
}

/// @nodoc

class _$_DeleteQuestion implements _DeleteQuestion {
  const _$_DeleteQuestion(
      {required this.bucketId,
      required this.index,
      required final List<Questions>? questions})
      : _questions = questions;

  @override
  final String bucketId;
  @override
  final int index;
  final List<Questions>? _questions;
  @override
  List<Questions>? get questions {
    final value = _questions;
    if (value == null) return null;
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BucketEvent.deleteQuestion(bucketId: $bucketId, index: $index, questions: $questions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteQuestion &&
            (identical(other.bucketId, bucketId) ||
                other.bucketId == bucketId) &&
            (identical(other.index, index) || other.index == index) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bucketId, index,
      const DeepCollectionEquality().hash(_questions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteQuestionCopyWith<_$_DeleteQuestion> get copyWith =>
      __$$_DeleteQuestionCopyWithImpl<_$_DeleteQuestion>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? bucketId) init,
    required TResult Function(List<Questions>? questions) addQuestion,
    required TResult Function(String bucketId, int? questionIndex,
            String? questionId, Questions question)
        setQuestion,
    required TResult Function(Questions question, int questionIndex,
            List<Answers>? answerList, List<Questions>? questions)
        addAnswer,
    required TResult Function(String bucketId, int? questionIndex,
            Questions question, Answers answer)
        setAnswer,
    required TResult Function(String name, Bucket? bucket) searchByName,
    required TResult Function(String bucketId) removeFromRelease,
    required TResult Function(String bucketId) publish,
    required TResult Function(
            String bucketId, int index, List<Questions>? questions)
        deleteQuestion,
    required TResult Function(String bucketId, Questions existedQuestions,
            int indexToDelete, List<Questions>? questions)
        deleteAnswer,
    required TResult Function(String bucketId) deleteBucket,
    required TResult Function(String bucketId) getStatistics,
  }) {
    return deleteQuestion(bucketId, index, questions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? bucketId)? init,
    TResult? Function(List<Questions>? questions)? addQuestion,
    TResult? Function(String bucketId, int? questionIndex, String? questionId,
            Questions question)?
        setQuestion,
    TResult? Function(Questions question, int questionIndex,
            List<Answers>? answerList, List<Questions>? questions)?
        addAnswer,
    TResult? Function(String bucketId, int? questionIndex, Questions question,
            Answers answer)?
        setAnswer,
    TResult? Function(String name, Bucket? bucket)? searchByName,
    TResult? Function(String bucketId)? removeFromRelease,
    TResult? Function(String bucketId)? publish,
    TResult? Function(String bucketId, int index, List<Questions>? questions)?
        deleteQuestion,
    TResult? Function(String bucketId, Questions existedQuestions,
            int indexToDelete, List<Questions>? questions)?
        deleteAnswer,
    TResult? Function(String bucketId)? deleteBucket,
    TResult? Function(String bucketId)? getStatistics,
  }) {
    return deleteQuestion?.call(bucketId, index, questions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? bucketId)? init,
    TResult Function(List<Questions>? questions)? addQuestion,
    TResult Function(String bucketId, int? questionIndex, String? questionId,
            Questions question)?
        setQuestion,
    TResult Function(Questions question, int questionIndex,
            List<Answers>? answerList, List<Questions>? questions)?
        addAnswer,
    TResult Function(String bucketId, int? questionIndex, Questions question,
            Answers answer)?
        setAnswer,
    TResult Function(String name, Bucket? bucket)? searchByName,
    TResult Function(String bucketId)? removeFromRelease,
    TResult Function(String bucketId)? publish,
    TResult Function(String bucketId, int index, List<Questions>? questions)?
        deleteQuestion,
    TResult Function(String bucketId, Questions existedQuestions,
            int indexToDelete, List<Questions>? questions)?
        deleteAnswer,
    TResult Function(String bucketId)? deleteBucket,
    TResult Function(String bucketId)? getStatistics,
    required TResult orElse(),
  }) {
    if (deleteQuestion != null) {
      return deleteQuestion(bucketId, index, questions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddQuestion value) addQuestion,
    required TResult Function(_SetQuestion value) setQuestion,
    required TResult Function(_AddAnswer value) addAnswer,
    required TResult Function(_SetAnswer value) setAnswer,
    required TResult Function(_SearchByName value) searchByName,
    required TResult Function(_RemoveFromRelease value) removeFromRelease,
    required TResult Function(_Publish value) publish,
    required TResult Function(_DeleteQuestion value) deleteQuestion,
    required TResult Function(_DeleteAnswer value) deleteAnswer,
    required TResult Function(_DeleteFullBucket value) deleteBucket,
    required TResult Function(_GetStatistics value) getStatistics,
  }) {
    return deleteQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddQuestion value)? addQuestion,
    TResult? Function(_SetQuestion value)? setQuestion,
    TResult? Function(_AddAnswer value)? addAnswer,
    TResult? Function(_SetAnswer value)? setAnswer,
    TResult? Function(_SearchByName value)? searchByName,
    TResult? Function(_RemoveFromRelease value)? removeFromRelease,
    TResult? Function(_Publish value)? publish,
    TResult? Function(_DeleteQuestion value)? deleteQuestion,
    TResult? Function(_DeleteAnswer value)? deleteAnswer,
    TResult? Function(_DeleteFullBucket value)? deleteBucket,
    TResult? Function(_GetStatistics value)? getStatistics,
  }) {
    return deleteQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddQuestion value)? addQuestion,
    TResult Function(_SetQuestion value)? setQuestion,
    TResult Function(_AddAnswer value)? addAnswer,
    TResult Function(_SetAnswer value)? setAnswer,
    TResult Function(_SearchByName value)? searchByName,
    TResult Function(_RemoveFromRelease value)? removeFromRelease,
    TResult Function(_Publish value)? publish,
    TResult Function(_DeleteQuestion value)? deleteQuestion,
    TResult Function(_DeleteAnswer value)? deleteAnswer,
    TResult Function(_DeleteFullBucket value)? deleteBucket,
    TResult Function(_GetStatistics value)? getStatistics,
    required TResult orElse(),
  }) {
    if (deleteQuestion != null) {
      return deleteQuestion(this);
    }
    return orElse();
  }
}

abstract class _DeleteQuestion implements BucketEvent {
  const factory _DeleteQuestion(
      {required final String bucketId,
      required final int index,
      required final List<Questions>? questions}) = _$_DeleteQuestion;

  String get bucketId;
  int get index;
  List<Questions>? get questions;
  @JsonKey(ignore: true)
  _$$_DeleteQuestionCopyWith<_$_DeleteQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteAnswerCopyWith<$Res> {
  factory _$$_DeleteAnswerCopyWith(
          _$_DeleteAnswer value, $Res Function(_$_DeleteAnswer) then) =
      __$$_DeleteAnswerCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String bucketId,
      Questions existedQuestions,
      int indexToDelete,
      List<Questions>? questions});

  $QuestionsCopyWith<$Res> get existedQuestions;
}

/// @nodoc
class __$$_DeleteAnswerCopyWithImpl<$Res>
    extends _$BucketEventCopyWithImpl<$Res, _$_DeleteAnswer>
    implements _$$_DeleteAnswerCopyWith<$Res> {
  __$$_DeleteAnswerCopyWithImpl(
      _$_DeleteAnswer _value, $Res Function(_$_DeleteAnswer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bucketId = null,
    Object? existedQuestions = null,
    Object? indexToDelete = null,
    Object? questions = freezed,
  }) {
    return _then(_$_DeleteAnswer(
      bucketId: null == bucketId
          ? _value.bucketId
          : bucketId // ignore: cast_nullable_to_non_nullable
              as String,
      existedQuestions: null == existedQuestions
          ? _value.existedQuestions
          : existedQuestions // ignore: cast_nullable_to_non_nullable
              as Questions,
      indexToDelete: null == indexToDelete
          ? _value.indexToDelete
          : indexToDelete // ignore: cast_nullable_to_non_nullable
              as int,
      questions: freezed == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Questions>?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $QuestionsCopyWith<$Res> get existedQuestions {
    return $QuestionsCopyWith<$Res>(_value.existedQuestions, (value) {
      return _then(_value.copyWith(existedQuestions: value));
    });
  }
}

/// @nodoc

class _$_DeleteAnswer implements _DeleteAnswer {
  const _$_DeleteAnswer(
      {required this.bucketId,
      required this.existedQuestions,
      required this.indexToDelete,
      required final List<Questions>? questions})
      : _questions = questions;

  @override
  final String bucketId;
  @override
  final Questions existedQuestions;
  @override
  final int indexToDelete;
  final List<Questions>? _questions;
  @override
  List<Questions>? get questions {
    final value = _questions;
    if (value == null) return null;
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BucketEvent.deleteAnswer(bucketId: $bucketId, existedQuestions: $existedQuestions, indexToDelete: $indexToDelete, questions: $questions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteAnswer &&
            (identical(other.bucketId, bucketId) ||
                other.bucketId == bucketId) &&
            (identical(other.existedQuestions, existedQuestions) ||
                other.existedQuestions == existedQuestions) &&
            (identical(other.indexToDelete, indexToDelete) ||
                other.indexToDelete == indexToDelete) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bucketId, existedQuestions,
      indexToDelete, const DeepCollectionEquality().hash(_questions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteAnswerCopyWith<_$_DeleteAnswer> get copyWith =>
      __$$_DeleteAnswerCopyWithImpl<_$_DeleteAnswer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? bucketId) init,
    required TResult Function(List<Questions>? questions) addQuestion,
    required TResult Function(String bucketId, int? questionIndex,
            String? questionId, Questions question)
        setQuestion,
    required TResult Function(Questions question, int questionIndex,
            List<Answers>? answerList, List<Questions>? questions)
        addAnswer,
    required TResult Function(String bucketId, int? questionIndex,
            Questions question, Answers answer)
        setAnswer,
    required TResult Function(String name, Bucket? bucket) searchByName,
    required TResult Function(String bucketId) removeFromRelease,
    required TResult Function(String bucketId) publish,
    required TResult Function(
            String bucketId, int index, List<Questions>? questions)
        deleteQuestion,
    required TResult Function(String bucketId, Questions existedQuestions,
            int indexToDelete, List<Questions>? questions)
        deleteAnswer,
    required TResult Function(String bucketId) deleteBucket,
    required TResult Function(String bucketId) getStatistics,
  }) {
    return deleteAnswer(bucketId, existedQuestions, indexToDelete, questions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? bucketId)? init,
    TResult? Function(List<Questions>? questions)? addQuestion,
    TResult? Function(String bucketId, int? questionIndex, String? questionId,
            Questions question)?
        setQuestion,
    TResult? Function(Questions question, int questionIndex,
            List<Answers>? answerList, List<Questions>? questions)?
        addAnswer,
    TResult? Function(String bucketId, int? questionIndex, Questions question,
            Answers answer)?
        setAnswer,
    TResult? Function(String name, Bucket? bucket)? searchByName,
    TResult? Function(String bucketId)? removeFromRelease,
    TResult? Function(String bucketId)? publish,
    TResult? Function(String bucketId, int index, List<Questions>? questions)?
        deleteQuestion,
    TResult? Function(String bucketId, Questions existedQuestions,
            int indexToDelete, List<Questions>? questions)?
        deleteAnswer,
    TResult? Function(String bucketId)? deleteBucket,
    TResult? Function(String bucketId)? getStatistics,
  }) {
    return deleteAnswer?.call(
        bucketId, existedQuestions, indexToDelete, questions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? bucketId)? init,
    TResult Function(List<Questions>? questions)? addQuestion,
    TResult Function(String bucketId, int? questionIndex, String? questionId,
            Questions question)?
        setQuestion,
    TResult Function(Questions question, int questionIndex,
            List<Answers>? answerList, List<Questions>? questions)?
        addAnswer,
    TResult Function(String bucketId, int? questionIndex, Questions question,
            Answers answer)?
        setAnswer,
    TResult Function(String name, Bucket? bucket)? searchByName,
    TResult Function(String bucketId)? removeFromRelease,
    TResult Function(String bucketId)? publish,
    TResult Function(String bucketId, int index, List<Questions>? questions)?
        deleteQuestion,
    TResult Function(String bucketId, Questions existedQuestions,
            int indexToDelete, List<Questions>? questions)?
        deleteAnswer,
    TResult Function(String bucketId)? deleteBucket,
    TResult Function(String bucketId)? getStatistics,
    required TResult orElse(),
  }) {
    if (deleteAnswer != null) {
      return deleteAnswer(bucketId, existedQuestions, indexToDelete, questions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddQuestion value) addQuestion,
    required TResult Function(_SetQuestion value) setQuestion,
    required TResult Function(_AddAnswer value) addAnswer,
    required TResult Function(_SetAnswer value) setAnswer,
    required TResult Function(_SearchByName value) searchByName,
    required TResult Function(_RemoveFromRelease value) removeFromRelease,
    required TResult Function(_Publish value) publish,
    required TResult Function(_DeleteQuestion value) deleteQuestion,
    required TResult Function(_DeleteAnswer value) deleteAnswer,
    required TResult Function(_DeleteFullBucket value) deleteBucket,
    required TResult Function(_GetStatistics value) getStatistics,
  }) {
    return deleteAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddQuestion value)? addQuestion,
    TResult? Function(_SetQuestion value)? setQuestion,
    TResult? Function(_AddAnswer value)? addAnswer,
    TResult? Function(_SetAnswer value)? setAnswer,
    TResult? Function(_SearchByName value)? searchByName,
    TResult? Function(_RemoveFromRelease value)? removeFromRelease,
    TResult? Function(_Publish value)? publish,
    TResult? Function(_DeleteQuestion value)? deleteQuestion,
    TResult? Function(_DeleteAnswer value)? deleteAnswer,
    TResult? Function(_DeleteFullBucket value)? deleteBucket,
    TResult? Function(_GetStatistics value)? getStatistics,
  }) {
    return deleteAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddQuestion value)? addQuestion,
    TResult Function(_SetQuestion value)? setQuestion,
    TResult Function(_AddAnswer value)? addAnswer,
    TResult Function(_SetAnswer value)? setAnswer,
    TResult Function(_SearchByName value)? searchByName,
    TResult Function(_RemoveFromRelease value)? removeFromRelease,
    TResult Function(_Publish value)? publish,
    TResult Function(_DeleteQuestion value)? deleteQuestion,
    TResult Function(_DeleteAnswer value)? deleteAnswer,
    TResult Function(_DeleteFullBucket value)? deleteBucket,
    TResult Function(_GetStatistics value)? getStatistics,
    required TResult orElse(),
  }) {
    if (deleteAnswer != null) {
      return deleteAnswer(this);
    }
    return orElse();
  }
}

abstract class _DeleteAnswer implements BucketEvent {
  const factory _DeleteAnswer(
      {required final String bucketId,
      required final Questions existedQuestions,
      required final int indexToDelete,
      required final List<Questions>? questions}) = _$_DeleteAnswer;

  String get bucketId;
  Questions get existedQuestions;
  int get indexToDelete;
  List<Questions>? get questions;
  @JsonKey(ignore: true)
  _$$_DeleteAnswerCopyWith<_$_DeleteAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteFullBucketCopyWith<$Res> {
  factory _$$_DeleteFullBucketCopyWith(
          _$_DeleteFullBucket value, $Res Function(_$_DeleteFullBucket) then) =
      __$$_DeleteFullBucketCopyWithImpl<$Res>;
  @useResult
  $Res call({String bucketId});
}

/// @nodoc
class __$$_DeleteFullBucketCopyWithImpl<$Res>
    extends _$BucketEventCopyWithImpl<$Res, _$_DeleteFullBucket>
    implements _$$_DeleteFullBucketCopyWith<$Res> {
  __$$_DeleteFullBucketCopyWithImpl(
      _$_DeleteFullBucket _value, $Res Function(_$_DeleteFullBucket) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bucketId = null,
  }) {
    return _then(_$_DeleteFullBucket(
      bucketId: null == bucketId
          ? _value.bucketId
          : bucketId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DeleteFullBucket implements _DeleteFullBucket {
  const _$_DeleteFullBucket({required this.bucketId});

  @override
  final String bucketId;

  @override
  String toString() {
    return 'BucketEvent.deleteBucket(bucketId: $bucketId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteFullBucket &&
            (identical(other.bucketId, bucketId) ||
                other.bucketId == bucketId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bucketId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteFullBucketCopyWith<_$_DeleteFullBucket> get copyWith =>
      __$$_DeleteFullBucketCopyWithImpl<_$_DeleteFullBucket>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? bucketId) init,
    required TResult Function(List<Questions>? questions) addQuestion,
    required TResult Function(String bucketId, int? questionIndex,
            String? questionId, Questions question)
        setQuestion,
    required TResult Function(Questions question, int questionIndex,
            List<Answers>? answerList, List<Questions>? questions)
        addAnswer,
    required TResult Function(String bucketId, int? questionIndex,
            Questions question, Answers answer)
        setAnswer,
    required TResult Function(String name, Bucket? bucket) searchByName,
    required TResult Function(String bucketId) removeFromRelease,
    required TResult Function(String bucketId) publish,
    required TResult Function(
            String bucketId, int index, List<Questions>? questions)
        deleteQuestion,
    required TResult Function(String bucketId, Questions existedQuestions,
            int indexToDelete, List<Questions>? questions)
        deleteAnswer,
    required TResult Function(String bucketId) deleteBucket,
    required TResult Function(String bucketId) getStatistics,
  }) {
    return deleteBucket(bucketId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? bucketId)? init,
    TResult? Function(List<Questions>? questions)? addQuestion,
    TResult? Function(String bucketId, int? questionIndex, String? questionId,
            Questions question)?
        setQuestion,
    TResult? Function(Questions question, int questionIndex,
            List<Answers>? answerList, List<Questions>? questions)?
        addAnswer,
    TResult? Function(String bucketId, int? questionIndex, Questions question,
            Answers answer)?
        setAnswer,
    TResult? Function(String name, Bucket? bucket)? searchByName,
    TResult? Function(String bucketId)? removeFromRelease,
    TResult? Function(String bucketId)? publish,
    TResult? Function(String bucketId, int index, List<Questions>? questions)?
        deleteQuestion,
    TResult? Function(String bucketId, Questions existedQuestions,
            int indexToDelete, List<Questions>? questions)?
        deleteAnswer,
    TResult? Function(String bucketId)? deleteBucket,
    TResult? Function(String bucketId)? getStatistics,
  }) {
    return deleteBucket?.call(bucketId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? bucketId)? init,
    TResult Function(List<Questions>? questions)? addQuestion,
    TResult Function(String bucketId, int? questionIndex, String? questionId,
            Questions question)?
        setQuestion,
    TResult Function(Questions question, int questionIndex,
            List<Answers>? answerList, List<Questions>? questions)?
        addAnswer,
    TResult Function(String bucketId, int? questionIndex, Questions question,
            Answers answer)?
        setAnswer,
    TResult Function(String name, Bucket? bucket)? searchByName,
    TResult Function(String bucketId)? removeFromRelease,
    TResult Function(String bucketId)? publish,
    TResult Function(String bucketId, int index, List<Questions>? questions)?
        deleteQuestion,
    TResult Function(String bucketId, Questions existedQuestions,
            int indexToDelete, List<Questions>? questions)?
        deleteAnswer,
    TResult Function(String bucketId)? deleteBucket,
    TResult Function(String bucketId)? getStatistics,
    required TResult orElse(),
  }) {
    if (deleteBucket != null) {
      return deleteBucket(bucketId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddQuestion value) addQuestion,
    required TResult Function(_SetQuestion value) setQuestion,
    required TResult Function(_AddAnswer value) addAnswer,
    required TResult Function(_SetAnswer value) setAnswer,
    required TResult Function(_SearchByName value) searchByName,
    required TResult Function(_RemoveFromRelease value) removeFromRelease,
    required TResult Function(_Publish value) publish,
    required TResult Function(_DeleteQuestion value) deleteQuestion,
    required TResult Function(_DeleteAnswer value) deleteAnswer,
    required TResult Function(_DeleteFullBucket value) deleteBucket,
    required TResult Function(_GetStatistics value) getStatistics,
  }) {
    return deleteBucket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddQuestion value)? addQuestion,
    TResult? Function(_SetQuestion value)? setQuestion,
    TResult? Function(_AddAnswer value)? addAnswer,
    TResult? Function(_SetAnswer value)? setAnswer,
    TResult? Function(_SearchByName value)? searchByName,
    TResult? Function(_RemoveFromRelease value)? removeFromRelease,
    TResult? Function(_Publish value)? publish,
    TResult? Function(_DeleteQuestion value)? deleteQuestion,
    TResult? Function(_DeleteAnswer value)? deleteAnswer,
    TResult? Function(_DeleteFullBucket value)? deleteBucket,
    TResult? Function(_GetStatistics value)? getStatistics,
  }) {
    return deleteBucket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddQuestion value)? addQuestion,
    TResult Function(_SetQuestion value)? setQuestion,
    TResult Function(_AddAnswer value)? addAnswer,
    TResult Function(_SetAnswer value)? setAnswer,
    TResult Function(_SearchByName value)? searchByName,
    TResult Function(_RemoveFromRelease value)? removeFromRelease,
    TResult Function(_Publish value)? publish,
    TResult Function(_DeleteQuestion value)? deleteQuestion,
    TResult Function(_DeleteAnswer value)? deleteAnswer,
    TResult Function(_DeleteFullBucket value)? deleteBucket,
    TResult Function(_GetStatistics value)? getStatistics,
    required TResult orElse(),
  }) {
    if (deleteBucket != null) {
      return deleteBucket(this);
    }
    return orElse();
  }
}

abstract class _DeleteFullBucket implements BucketEvent {
  const factory _DeleteFullBucket({required final String bucketId}) =
      _$_DeleteFullBucket;

  String get bucketId;
  @JsonKey(ignore: true)
  _$$_DeleteFullBucketCopyWith<_$_DeleteFullBucket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetStatisticsCopyWith<$Res> {
  factory _$$_GetStatisticsCopyWith(
          _$_GetStatistics value, $Res Function(_$_GetStatistics) then) =
      __$$_GetStatisticsCopyWithImpl<$Res>;
  @useResult
  $Res call({String bucketId});
}

/// @nodoc
class __$$_GetStatisticsCopyWithImpl<$Res>
    extends _$BucketEventCopyWithImpl<$Res, _$_GetStatistics>
    implements _$$_GetStatisticsCopyWith<$Res> {
  __$$_GetStatisticsCopyWithImpl(
      _$_GetStatistics _value, $Res Function(_$_GetStatistics) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bucketId = null,
  }) {
    return _then(_$_GetStatistics(
      bucketId: null == bucketId
          ? _value.bucketId
          : bucketId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetStatistics implements _GetStatistics {
  const _$_GetStatistics({required this.bucketId});

  @override
  final String bucketId;

  @override
  String toString() {
    return 'BucketEvent.getStatistics(bucketId: $bucketId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetStatistics &&
            (identical(other.bucketId, bucketId) ||
                other.bucketId == bucketId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bucketId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetStatisticsCopyWith<_$_GetStatistics> get copyWith =>
      __$$_GetStatisticsCopyWithImpl<_$_GetStatistics>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? bucketId) init,
    required TResult Function(List<Questions>? questions) addQuestion,
    required TResult Function(String bucketId, int? questionIndex,
            String? questionId, Questions question)
        setQuestion,
    required TResult Function(Questions question, int questionIndex,
            List<Answers>? answerList, List<Questions>? questions)
        addAnswer,
    required TResult Function(String bucketId, int? questionIndex,
            Questions question, Answers answer)
        setAnswer,
    required TResult Function(String name, Bucket? bucket) searchByName,
    required TResult Function(String bucketId) removeFromRelease,
    required TResult Function(String bucketId) publish,
    required TResult Function(
            String bucketId, int index, List<Questions>? questions)
        deleteQuestion,
    required TResult Function(String bucketId, Questions existedQuestions,
            int indexToDelete, List<Questions>? questions)
        deleteAnswer,
    required TResult Function(String bucketId) deleteBucket,
    required TResult Function(String bucketId) getStatistics,
  }) {
    return getStatistics(bucketId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? bucketId)? init,
    TResult? Function(List<Questions>? questions)? addQuestion,
    TResult? Function(String bucketId, int? questionIndex, String? questionId,
            Questions question)?
        setQuestion,
    TResult? Function(Questions question, int questionIndex,
            List<Answers>? answerList, List<Questions>? questions)?
        addAnswer,
    TResult? Function(String bucketId, int? questionIndex, Questions question,
            Answers answer)?
        setAnswer,
    TResult? Function(String name, Bucket? bucket)? searchByName,
    TResult? Function(String bucketId)? removeFromRelease,
    TResult? Function(String bucketId)? publish,
    TResult? Function(String bucketId, int index, List<Questions>? questions)?
        deleteQuestion,
    TResult? Function(String bucketId, Questions existedQuestions,
            int indexToDelete, List<Questions>? questions)?
        deleteAnswer,
    TResult? Function(String bucketId)? deleteBucket,
    TResult? Function(String bucketId)? getStatistics,
  }) {
    return getStatistics?.call(bucketId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? bucketId)? init,
    TResult Function(List<Questions>? questions)? addQuestion,
    TResult Function(String bucketId, int? questionIndex, String? questionId,
            Questions question)?
        setQuestion,
    TResult Function(Questions question, int questionIndex,
            List<Answers>? answerList, List<Questions>? questions)?
        addAnswer,
    TResult Function(String bucketId, int? questionIndex, Questions question,
            Answers answer)?
        setAnswer,
    TResult Function(String name, Bucket? bucket)? searchByName,
    TResult Function(String bucketId)? removeFromRelease,
    TResult Function(String bucketId)? publish,
    TResult Function(String bucketId, int index, List<Questions>? questions)?
        deleteQuestion,
    TResult Function(String bucketId, Questions existedQuestions,
            int indexToDelete, List<Questions>? questions)?
        deleteAnswer,
    TResult Function(String bucketId)? deleteBucket,
    TResult Function(String bucketId)? getStatistics,
    required TResult orElse(),
  }) {
    if (getStatistics != null) {
      return getStatistics(bucketId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddQuestion value) addQuestion,
    required TResult Function(_SetQuestion value) setQuestion,
    required TResult Function(_AddAnswer value) addAnswer,
    required TResult Function(_SetAnswer value) setAnswer,
    required TResult Function(_SearchByName value) searchByName,
    required TResult Function(_RemoveFromRelease value) removeFromRelease,
    required TResult Function(_Publish value) publish,
    required TResult Function(_DeleteQuestion value) deleteQuestion,
    required TResult Function(_DeleteAnswer value) deleteAnswer,
    required TResult Function(_DeleteFullBucket value) deleteBucket,
    required TResult Function(_GetStatistics value) getStatistics,
  }) {
    return getStatistics(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddQuestion value)? addQuestion,
    TResult? Function(_SetQuestion value)? setQuestion,
    TResult? Function(_AddAnswer value)? addAnswer,
    TResult? Function(_SetAnswer value)? setAnswer,
    TResult? Function(_SearchByName value)? searchByName,
    TResult? Function(_RemoveFromRelease value)? removeFromRelease,
    TResult? Function(_Publish value)? publish,
    TResult? Function(_DeleteQuestion value)? deleteQuestion,
    TResult? Function(_DeleteAnswer value)? deleteAnswer,
    TResult? Function(_DeleteFullBucket value)? deleteBucket,
    TResult? Function(_GetStatistics value)? getStatistics,
  }) {
    return getStatistics?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddQuestion value)? addQuestion,
    TResult Function(_SetQuestion value)? setQuestion,
    TResult Function(_AddAnswer value)? addAnswer,
    TResult Function(_SetAnswer value)? setAnswer,
    TResult Function(_SearchByName value)? searchByName,
    TResult Function(_RemoveFromRelease value)? removeFromRelease,
    TResult Function(_Publish value)? publish,
    TResult Function(_DeleteQuestion value)? deleteQuestion,
    TResult Function(_DeleteAnswer value)? deleteAnswer,
    TResult Function(_DeleteFullBucket value)? deleteBucket,
    TResult Function(_GetStatistics value)? getStatistics,
    required TResult orElse(),
  }) {
    if (getStatistics != null) {
      return getStatistics(this);
    }
    return orElse();
  }
}

abstract class _GetStatistics implements BucketEvent {
  const factory _GetStatistics({required final String bucketId}) =
      _$_GetStatistics;

  String get bucketId;
  @JsonKey(ignore: true)
  _$$_GetStatisticsCopyWith<_$_GetStatistics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BucketState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)
        loaded,
    required TResult Function(Questions? questions) questionAdded,
    required TResult Function(Questions? question, int questionIndex)
        answerAdded,
    required TResult Function() success,
    required TResult Function(bool isPublished) isPublished,
    required TResult Function(String error) error,
    required TResult Function() searchLoading,
    required TResult Function(String error) searchError,
    required TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)
        searchLoaded,
    required TResult Function(int? completedQuiz, int? joined) calculated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        loaded,
    TResult? Function(Questions? questions)? questionAdded,
    TResult? Function(Questions? question, int questionIndex)? answerAdded,
    TResult? Function()? success,
    TResult? Function(bool isPublished)? isPublished,
    TResult? Function(String error)? error,
    TResult? Function()? searchLoading,
    TResult? Function(String error)? searchError,
    TResult? Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        searchLoaded,
    TResult? Function(int? completedQuiz, int? joined)? calculated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        loaded,
    TResult Function(Questions? questions)? questionAdded,
    TResult Function(Questions? question, int questionIndex)? answerAdded,
    TResult Function()? success,
    TResult Function(bool isPublished)? isPublished,
    TResult Function(String error)? error,
    TResult Function()? searchLoading,
    TResult Function(String error)? searchError,
    TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        searchLoaded,
    TResult Function(int? completedQuiz, int? joined)? calculated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_QuestionAdded value) questionAdded,
    required TResult Function(_AnswerAdded value) answerAdded,
    required TResult Function(_Success value) success,
    required TResult Function(_IsPublished value) isPublished,
    required TResult Function(_Error value) error,
    required TResult Function(_SearchLoading value) searchLoading,
    required TResult Function(_SearchError value) searchError,
    required TResult Function(_SearchLoaded value) searchLoaded,
    required TResult Function(_Calculated value) calculated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_QuestionAdded value)? questionAdded,
    TResult? Function(_AnswerAdded value)? answerAdded,
    TResult? Function(_Success value)? success,
    TResult? Function(_IsPublished value)? isPublished,
    TResult? Function(_Error value)? error,
    TResult? Function(_SearchLoading value)? searchLoading,
    TResult? Function(_SearchError value)? searchError,
    TResult? Function(_SearchLoaded value)? searchLoaded,
    TResult? Function(_Calculated value)? calculated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_QuestionAdded value)? questionAdded,
    TResult Function(_AnswerAdded value)? answerAdded,
    TResult Function(_Success value)? success,
    TResult Function(_IsPublished value)? isPublished,
    TResult Function(_Error value)? error,
    TResult Function(_SearchLoading value)? searchLoading,
    TResult Function(_SearchError value)? searchError,
    TResult Function(_SearchLoaded value)? searchLoaded,
    TResult Function(_Calculated value)? calculated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BucketStateCopyWith<$Res> {
  factory $BucketStateCopyWith(
          BucketState value, $Res Function(BucketState) then) =
      _$BucketStateCopyWithImpl<$Res, BucketState>;
}

/// @nodoc
class _$BucketStateCopyWithImpl<$Res, $Val extends BucketState>
    implements $BucketStateCopyWith<$Res> {
  _$BucketStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$BucketStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial() : super._();

  @override
  String toString() {
    return 'BucketState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)
        loaded,
    required TResult Function(Questions? questions) questionAdded,
    required TResult Function(Questions? question, int questionIndex)
        answerAdded,
    required TResult Function() success,
    required TResult Function(bool isPublished) isPublished,
    required TResult Function(String error) error,
    required TResult Function() searchLoading,
    required TResult Function(String error) searchError,
    required TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)
        searchLoaded,
    required TResult Function(int? completedQuiz, int? joined) calculated,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        loaded,
    TResult? Function(Questions? questions)? questionAdded,
    TResult? Function(Questions? question, int questionIndex)? answerAdded,
    TResult? Function()? success,
    TResult? Function(bool isPublished)? isPublished,
    TResult? Function(String error)? error,
    TResult? Function()? searchLoading,
    TResult? Function(String error)? searchError,
    TResult? Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        searchLoaded,
    TResult? Function(int? completedQuiz, int? joined)? calculated,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        loaded,
    TResult Function(Questions? questions)? questionAdded,
    TResult Function(Questions? question, int questionIndex)? answerAdded,
    TResult Function()? success,
    TResult Function(bool isPublished)? isPublished,
    TResult Function(String error)? error,
    TResult Function()? searchLoading,
    TResult Function(String error)? searchError,
    TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        searchLoaded,
    TResult Function(int? completedQuiz, int? joined)? calculated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_QuestionAdded value) questionAdded,
    required TResult Function(_AnswerAdded value) answerAdded,
    required TResult Function(_Success value) success,
    required TResult Function(_IsPublished value) isPublished,
    required TResult Function(_Error value) error,
    required TResult Function(_SearchLoading value) searchLoading,
    required TResult Function(_SearchError value) searchError,
    required TResult Function(_SearchLoaded value) searchLoaded,
    required TResult Function(_Calculated value) calculated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_QuestionAdded value)? questionAdded,
    TResult? Function(_AnswerAdded value)? answerAdded,
    TResult? Function(_Success value)? success,
    TResult? Function(_IsPublished value)? isPublished,
    TResult? Function(_Error value)? error,
    TResult? Function(_SearchLoading value)? searchLoading,
    TResult? Function(_SearchError value)? searchError,
    TResult? Function(_SearchLoaded value)? searchLoaded,
    TResult? Function(_Calculated value)? calculated,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_QuestionAdded value)? questionAdded,
    TResult Function(_AnswerAdded value)? answerAdded,
    TResult Function(_Success value)? success,
    TResult Function(_IsPublished value)? isPublished,
    TResult Function(_Error value)? error,
    TResult Function(_SearchLoading value)? searchLoading,
    TResult Function(_SearchError value)? searchError,
    TResult Function(_SearchLoaded value)? searchLoaded,
    TResult Function(_Calculated value)? calculated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends BucketState {
  const factory _Initial() = _$_Initial;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$BucketStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading() : super._();

  @override
  String toString() {
    return 'BucketState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)
        loaded,
    required TResult Function(Questions? questions) questionAdded,
    required TResult Function(Questions? question, int questionIndex)
        answerAdded,
    required TResult Function() success,
    required TResult Function(bool isPublished) isPublished,
    required TResult Function(String error) error,
    required TResult Function() searchLoading,
    required TResult Function(String error) searchError,
    required TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)
        searchLoaded,
    required TResult Function(int? completedQuiz, int? joined) calculated,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        loaded,
    TResult? Function(Questions? questions)? questionAdded,
    TResult? Function(Questions? question, int questionIndex)? answerAdded,
    TResult? Function()? success,
    TResult? Function(bool isPublished)? isPublished,
    TResult? Function(String error)? error,
    TResult? Function()? searchLoading,
    TResult? Function(String error)? searchError,
    TResult? Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        searchLoaded,
    TResult? Function(int? completedQuiz, int? joined)? calculated,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        loaded,
    TResult Function(Questions? questions)? questionAdded,
    TResult Function(Questions? question, int questionIndex)? answerAdded,
    TResult Function()? success,
    TResult Function(bool isPublished)? isPublished,
    TResult Function(String error)? error,
    TResult Function()? searchLoading,
    TResult Function(String error)? searchError,
    TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        searchLoaded,
    TResult Function(int? completedQuiz, int? joined)? calculated,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_QuestionAdded value) questionAdded,
    required TResult Function(_AnswerAdded value) answerAdded,
    required TResult Function(_Success value) success,
    required TResult Function(_IsPublished value) isPublished,
    required TResult Function(_Error value) error,
    required TResult Function(_SearchLoading value) searchLoading,
    required TResult Function(_SearchError value) searchError,
    required TResult Function(_SearchLoaded value) searchLoaded,
    required TResult Function(_Calculated value) calculated,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_QuestionAdded value)? questionAdded,
    TResult? Function(_AnswerAdded value)? answerAdded,
    TResult? Function(_Success value)? success,
    TResult? Function(_IsPublished value)? isPublished,
    TResult? Function(_Error value)? error,
    TResult? Function(_SearchLoading value)? searchLoading,
    TResult? Function(_SearchError value)? searchError,
    TResult? Function(_SearchLoaded value)? searchLoaded,
    TResult? Function(_Calculated value)? calculated,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_QuestionAdded value)? questionAdded,
    TResult Function(_AnswerAdded value)? answerAdded,
    TResult Function(_Success value)? success,
    TResult Function(_IsPublished value)? isPublished,
    TResult Function(_Error value)? error,
    TResult Function(_SearchLoading value)? searchLoading,
    TResult Function(_SearchError value)? searchError,
    TResult Function(_SearchLoaded value)? searchLoaded,
    TResult Function(_Calculated value)? calculated,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends BucketState {
  const factory _Loading() = _$_Loading;
  const _Loading._() : super._();
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Questions> questionsList, Bucket? bucket, bool? isPublished});

  $BucketCopyWith<$Res>? get bucket;
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$BucketStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionsList = null,
    Object? bucket = freezed,
    Object? isPublished = freezed,
  }) {
    return _then(_$_Loaded(
      questionsList: null == questionsList
          ? _value._questionsList
          : questionsList // ignore: cast_nullable_to_non_nullable
              as List<Questions>,
      bucket: freezed == bucket
          ? _value.bucket
          : bucket // ignore: cast_nullable_to_non_nullable
              as Bucket?,
      isPublished: freezed == isPublished
          ? _value.isPublished
          : isPublished // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BucketCopyWith<$Res>? get bucket {
    if (_value.bucket == null) {
      return null;
    }

    return $BucketCopyWith<$Res>(_value.bucket!, (value) {
      return _then(_value.copyWith(bucket: value));
    });
  }
}

/// @nodoc

class _$_Loaded extends _Loaded {
  const _$_Loaded(
      {final List<Questions> questionsList = const [],
      this.bucket,
      this.isPublished})
      : _questionsList = questionsList,
        super._();

  final List<Questions> _questionsList;
  @override
  @JsonKey()
  List<Questions> get questionsList {
    if (_questionsList is EqualUnmodifiableListView) return _questionsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questionsList);
  }

  @override
  final Bucket? bucket;
  @override
  final bool? isPublished;

  @override
  String toString() {
    return 'BucketState.loaded(questionsList: $questionsList, bucket: $bucket, isPublished: $isPublished)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality()
                .equals(other._questionsList, _questionsList) &&
            (identical(other.bucket, bucket) || other.bucket == bucket) &&
            (identical(other.isPublished, isPublished) ||
                other.isPublished == isPublished));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_questionsList), bucket, isPublished);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)
        loaded,
    required TResult Function(Questions? questions) questionAdded,
    required TResult Function(Questions? question, int questionIndex)
        answerAdded,
    required TResult Function() success,
    required TResult Function(bool isPublished) isPublished,
    required TResult Function(String error) error,
    required TResult Function() searchLoading,
    required TResult Function(String error) searchError,
    required TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)
        searchLoaded,
    required TResult Function(int? completedQuiz, int? joined) calculated,
  }) {
    return loaded(questionsList, bucket, this.isPublished);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        loaded,
    TResult? Function(Questions? questions)? questionAdded,
    TResult? Function(Questions? question, int questionIndex)? answerAdded,
    TResult? Function()? success,
    TResult? Function(bool isPublished)? isPublished,
    TResult? Function(String error)? error,
    TResult? Function()? searchLoading,
    TResult? Function(String error)? searchError,
    TResult? Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        searchLoaded,
    TResult? Function(int? completedQuiz, int? joined)? calculated,
  }) {
    return loaded?.call(questionsList, bucket, this.isPublished);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        loaded,
    TResult Function(Questions? questions)? questionAdded,
    TResult Function(Questions? question, int questionIndex)? answerAdded,
    TResult Function()? success,
    TResult Function(bool isPublished)? isPublished,
    TResult Function(String error)? error,
    TResult Function()? searchLoading,
    TResult Function(String error)? searchError,
    TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        searchLoaded,
    TResult Function(int? completedQuiz, int? joined)? calculated,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(questionsList, bucket, this.isPublished);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_QuestionAdded value) questionAdded,
    required TResult Function(_AnswerAdded value) answerAdded,
    required TResult Function(_Success value) success,
    required TResult Function(_IsPublished value) isPublished,
    required TResult Function(_Error value) error,
    required TResult Function(_SearchLoading value) searchLoading,
    required TResult Function(_SearchError value) searchError,
    required TResult Function(_SearchLoaded value) searchLoaded,
    required TResult Function(_Calculated value) calculated,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_QuestionAdded value)? questionAdded,
    TResult? Function(_AnswerAdded value)? answerAdded,
    TResult? Function(_Success value)? success,
    TResult? Function(_IsPublished value)? isPublished,
    TResult? Function(_Error value)? error,
    TResult? Function(_SearchLoading value)? searchLoading,
    TResult? Function(_SearchError value)? searchError,
    TResult? Function(_SearchLoaded value)? searchLoaded,
    TResult? Function(_Calculated value)? calculated,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_QuestionAdded value)? questionAdded,
    TResult Function(_AnswerAdded value)? answerAdded,
    TResult Function(_Success value)? success,
    TResult Function(_IsPublished value)? isPublished,
    TResult Function(_Error value)? error,
    TResult Function(_SearchLoading value)? searchLoading,
    TResult Function(_SearchError value)? searchError,
    TResult Function(_SearchLoaded value)? searchLoaded,
    TResult Function(_Calculated value)? calculated,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded extends BucketState {
  const factory _Loaded(
      {final List<Questions> questionsList,
      final Bucket? bucket,
      final bool? isPublished}) = _$_Loaded;
  const _Loaded._() : super._();

  List<Questions> get questionsList;
  Bucket? get bucket;
  bool? get isPublished;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_QuestionAddedCopyWith<$Res> {
  factory _$$_QuestionAddedCopyWith(
          _$_QuestionAdded value, $Res Function(_$_QuestionAdded) then) =
      __$$_QuestionAddedCopyWithImpl<$Res>;
  @useResult
  $Res call({Questions? questions});

  $QuestionsCopyWith<$Res>? get questions;
}

/// @nodoc
class __$$_QuestionAddedCopyWithImpl<$Res>
    extends _$BucketStateCopyWithImpl<$Res, _$_QuestionAdded>
    implements _$$_QuestionAddedCopyWith<$Res> {
  __$$_QuestionAddedCopyWithImpl(
      _$_QuestionAdded _value, $Res Function(_$_QuestionAdded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questions = freezed,
  }) {
    return _then(_$_QuestionAdded(
      questions: freezed == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as Questions?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $QuestionsCopyWith<$Res>? get questions {
    if (_value.questions == null) {
      return null;
    }

    return $QuestionsCopyWith<$Res>(_value.questions!, (value) {
      return _then(_value.copyWith(questions: value));
    });
  }
}

/// @nodoc

class _$_QuestionAdded extends _QuestionAdded {
  const _$_QuestionAdded({this.questions}) : super._();

  @override
  final Questions? questions;

  @override
  String toString() {
    return 'BucketState.questionAdded(questions: $questions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionAdded &&
            (identical(other.questions, questions) ||
                other.questions == questions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, questions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionAddedCopyWith<_$_QuestionAdded> get copyWith =>
      __$$_QuestionAddedCopyWithImpl<_$_QuestionAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)
        loaded,
    required TResult Function(Questions? questions) questionAdded,
    required TResult Function(Questions? question, int questionIndex)
        answerAdded,
    required TResult Function() success,
    required TResult Function(bool isPublished) isPublished,
    required TResult Function(String error) error,
    required TResult Function() searchLoading,
    required TResult Function(String error) searchError,
    required TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)
        searchLoaded,
    required TResult Function(int? completedQuiz, int? joined) calculated,
  }) {
    return questionAdded(questions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        loaded,
    TResult? Function(Questions? questions)? questionAdded,
    TResult? Function(Questions? question, int questionIndex)? answerAdded,
    TResult? Function()? success,
    TResult? Function(bool isPublished)? isPublished,
    TResult? Function(String error)? error,
    TResult? Function()? searchLoading,
    TResult? Function(String error)? searchError,
    TResult? Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        searchLoaded,
    TResult? Function(int? completedQuiz, int? joined)? calculated,
  }) {
    return questionAdded?.call(questions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        loaded,
    TResult Function(Questions? questions)? questionAdded,
    TResult Function(Questions? question, int questionIndex)? answerAdded,
    TResult Function()? success,
    TResult Function(bool isPublished)? isPublished,
    TResult Function(String error)? error,
    TResult Function()? searchLoading,
    TResult Function(String error)? searchError,
    TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        searchLoaded,
    TResult Function(int? completedQuiz, int? joined)? calculated,
    required TResult orElse(),
  }) {
    if (questionAdded != null) {
      return questionAdded(questions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_QuestionAdded value) questionAdded,
    required TResult Function(_AnswerAdded value) answerAdded,
    required TResult Function(_Success value) success,
    required TResult Function(_IsPublished value) isPublished,
    required TResult Function(_Error value) error,
    required TResult Function(_SearchLoading value) searchLoading,
    required TResult Function(_SearchError value) searchError,
    required TResult Function(_SearchLoaded value) searchLoaded,
    required TResult Function(_Calculated value) calculated,
  }) {
    return questionAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_QuestionAdded value)? questionAdded,
    TResult? Function(_AnswerAdded value)? answerAdded,
    TResult? Function(_Success value)? success,
    TResult? Function(_IsPublished value)? isPublished,
    TResult? Function(_Error value)? error,
    TResult? Function(_SearchLoading value)? searchLoading,
    TResult? Function(_SearchError value)? searchError,
    TResult? Function(_SearchLoaded value)? searchLoaded,
    TResult? Function(_Calculated value)? calculated,
  }) {
    return questionAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_QuestionAdded value)? questionAdded,
    TResult Function(_AnswerAdded value)? answerAdded,
    TResult Function(_Success value)? success,
    TResult Function(_IsPublished value)? isPublished,
    TResult Function(_Error value)? error,
    TResult Function(_SearchLoading value)? searchLoading,
    TResult Function(_SearchError value)? searchError,
    TResult Function(_SearchLoaded value)? searchLoaded,
    TResult Function(_Calculated value)? calculated,
    required TResult orElse(),
  }) {
    if (questionAdded != null) {
      return questionAdded(this);
    }
    return orElse();
  }
}

abstract class _QuestionAdded extends BucketState {
  const factory _QuestionAdded({final Questions? questions}) = _$_QuestionAdded;
  const _QuestionAdded._() : super._();

  Questions? get questions;
  @JsonKey(ignore: true)
  _$$_QuestionAddedCopyWith<_$_QuestionAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AnswerAddedCopyWith<$Res> {
  factory _$$_AnswerAddedCopyWith(
          _$_AnswerAdded value, $Res Function(_$_AnswerAdded) then) =
      __$$_AnswerAddedCopyWithImpl<$Res>;
  @useResult
  $Res call({Questions? question, int questionIndex});

  $QuestionsCopyWith<$Res>? get question;
}

/// @nodoc
class __$$_AnswerAddedCopyWithImpl<$Res>
    extends _$BucketStateCopyWithImpl<$Res, _$_AnswerAdded>
    implements _$$_AnswerAddedCopyWith<$Res> {
  __$$_AnswerAddedCopyWithImpl(
      _$_AnswerAdded _value, $Res Function(_$_AnswerAdded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = freezed,
    Object? questionIndex = null,
  }) {
    return _then(_$_AnswerAdded(
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as Questions?,
      questionIndex: null == questionIndex
          ? _value.questionIndex
          : questionIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $QuestionsCopyWith<$Res>? get question {
    if (_value.question == null) {
      return null;
    }

    return $QuestionsCopyWith<$Res>(_value.question!, (value) {
      return _then(_value.copyWith(question: value));
    });
  }
}

/// @nodoc

class _$_AnswerAdded extends _AnswerAdded {
  const _$_AnswerAdded({this.question, required this.questionIndex})
      : super._();

  @override
  final Questions? question;
  @override
  final int questionIndex;

  @override
  String toString() {
    return 'BucketState.answerAdded(question: $question, questionIndex: $questionIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnswerAdded &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.questionIndex, questionIndex) ||
                other.questionIndex == questionIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, question, questionIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnswerAddedCopyWith<_$_AnswerAdded> get copyWith =>
      __$$_AnswerAddedCopyWithImpl<_$_AnswerAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)
        loaded,
    required TResult Function(Questions? questions) questionAdded,
    required TResult Function(Questions? question, int questionIndex)
        answerAdded,
    required TResult Function() success,
    required TResult Function(bool isPublished) isPublished,
    required TResult Function(String error) error,
    required TResult Function() searchLoading,
    required TResult Function(String error) searchError,
    required TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)
        searchLoaded,
    required TResult Function(int? completedQuiz, int? joined) calculated,
  }) {
    return answerAdded(question, questionIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        loaded,
    TResult? Function(Questions? questions)? questionAdded,
    TResult? Function(Questions? question, int questionIndex)? answerAdded,
    TResult? Function()? success,
    TResult? Function(bool isPublished)? isPublished,
    TResult? Function(String error)? error,
    TResult? Function()? searchLoading,
    TResult? Function(String error)? searchError,
    TResult? Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        searchLoaded,
    TResult? Function(int? completedQuiz, int? joined)? calculated,
  }) {
    return answerAdded?.call(question, questionIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        loaded,
    TResult Function(Questions? questions)? questionAdded,
    TResult Function(Questions? question, int questionIndex)? answerAdded,
    TResult Function()? success,
    TResult Function(bool isPublished)? isPublished,
    TResult Function(String error)? error,
    TResult Function()? searchLoading,
    TResult Function(String error)? searchError,
    TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        searchLoaded,
    TResult Function(int? completedQuiz, int? joined)? calculated,
    required TResult orElse(),
  }) {
    if (answerAdded != null) {
      return answerAdded(question, questionIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_QuestionAdded value) questionAdded,
    required TResult Function(_AnswerAdded value) answerAdded,
    required TResult Function(_Success value) success,
    required TResult Function(_IsPublished value) isPublished,
    required TResult Function(_Error value) error,
    required TResult Function(_SearchLoading value) searchLoading,
    required TResult Function(_SearchError value) searchError,
    required TResult Function(_SearchLoaded value) searchLoaded,
    required TResult Function(_Calculated value) calculated,
  }) {
    return answerAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_QuestionAdded value)? questionAdded,
    TResult? Function(_AnswerAdded value)? answerAdded,
    TResult? Function(_Success value)? success,
    TResult? Function(_IsPublished value)? isPublished,
    TResult? Function(_Error value)? error,
    TResult? Function(_SearchLoading value)? searchLoading,
    TResult? Function(_SearchError value)? searchError,
    TResult? Function(_SearchLoaded value)? searchLoaded,
    TResult? Function(_Calculated value)? calculated,
  }) {
    return answerAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_QuestionAdded value)? questionAdded,
    TResult Function(_AnswerAdded value)? answerAdded,
    TResult Function(_Success value)? success,
    TResult Function(_IsPublished value)? isPublished,
    TResult Function(_Error value)? error,
    TResult Function(_SearchLoading value)? searchLoading,
    TResult Function(_SearchError value)? searchError,
    TResult Function(_SearchLoaded value)? searchLoaded,
    TResult Function(_Calculated value)? calculated,
    required TResult orElse(),
  }) {
    if (answerAdded != null) {
      return answerAdded(this);
    }
    return orElse();
  }
}

abstract class _AnswerAdded extends BucketState {
  const factory _AnswerAdded(
      {final Questions? question,
      required final int questionIndex}) = _$_AnswerAdded;
  const _AnswerAdded._() : super._();

  Questions? get question;
  int get questionIndex;
  @JsonKey(ignore: true)
  _$$_AnswerAddedCopyWith<_$_AnswerAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$BucketStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Success extends _Success {
  const _$_Success() : super._();

  @override
  String toString() {
    return 'BucketState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Success);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)
        loaded,
    required TResult Function(Questions? questions) questionAdded,
    required TResult Function(Questions? question, int questionIndex)
        answerAdded,
    required TResult Function() success,
    required TResult Function(bool isPublished) isPublished,
    required TResult Function(String error) error,
    required TResult Function() searchLoading,
    required TResult Function(String error) searchError,
    required TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)
        searchLoaded,
    required TResult Function(int? completedQuiz, int? joined) calculated,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        loaded,
    TResult? Function(Questions? questions)? questionAdded,
    TResult? Function(Questions? question, int questionIndex)? answerAdded,
    TResult? Function()? success,
    TResult? Function(bool isPublished)? isPublished,
    TResult? Function(String error)? error,
    TResult? Function()? searchLoading,
    TResult? Function(String error)? searchError,
    TResult? Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        searchLoaded,
    TResult? Function(int? completedQuiz, int? joined)? calculated,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        loaded,
    TResult Function(Questions? questions)? questionAdded,
    TResult Function(Questions? question, int questionIndex)? answerAdded,
    TResult Function()? success,
    TResult Function(bool isPublished)? isPublished,
    TResult Function(String error)? error,
    TResult Function()? searchLoading,
    TResult Function(String error)? searchError,
    TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        searchLoaded,
    TResult Function(int? completedQuiz, int? joined)? calculated,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_QuestionAdded value) questionAdded,
    required TResult Function(_AnswerAdded value) answerAdded,
    required TResult Function(_Success value) success,
    required TResult Function(_IsPublished value) isPublished,
    required TResult Function(_Error value) error,
    required TResult Function(_SearchLoading value) searchLoading,
    required TResult Function(_SearchError value) searchError,
    required TResult Function(_SearchLoaded value) searchLoaded,
    required TResult Function(_Calculated value) calculated,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_QuestionAdded value)? questionAdded,
    TResult? Function(_AnswerAdded value)? answerAdded,
    TResult? Function(_Success value)? success,
    TResult? Function(_IsPublished value)? isPublished,
    TResult? Function(_Error value)? error,
    TResult? Function(_SearchLoading value)? searchLoading,
    TResult? Function(_SearchError value)? searchError,
    TResult? Function(_SearchLoaded value)? searchLoaded,
    TResult? Function(_Calculated value)? calculated,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_QuestionAdded value)? questionAdded,
    TResult Function(_AnswerAdded value)? answerAdded,
    TResult Function(_Success value)? success,
    TResult Function(_IsPublished value)? isPublished,
    TResult Function(_Error value)? error,
    TResult Function(_SearchLoading value)? searchLoading,
    TResult Function(_SearchError value)? searchError,
    TResult Function(_SearchLoaded value)? searchLoaded,
    TResult Function(_Calculated value)? calculated,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success extends BucketState {
  const factory _Success() = _$_Success;
  const _Success._() : super._();
}

/// @nodoc
abstract class _$$_IsPublishedCopyWith<$Res> {
  factory _$$_IsPublishedCopyWith(
          _$_IsPublished value, $Res Function(_$_IsPublished) then) =
      __$$_IsPublishedCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isPublished});
}

/// @nodoc
class __$$_IsPublishedCopyWithImpl<$Res>
    extends _$BucketStateCopyWithImpl<$Res, _$_IsPublished>
    implements _$$_IsPublishedCopyWith<$Res> {
  __$$_IsPublishedCopyWithImpl(
      _$_IsPublished _value, $Res Function(_$_IsPublished) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPublished = null,
  }) {
    return _then(_$_IsPublished(
      isPublished: null == isPublished
          ? _value.isPublished
          : isPublished // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_IsPublished extends _IsPublished {
  const _$_IsPublished({required this.isPublished}) : super._();

  @override
  final bool isPublished;

  @override
  String toString() {
    return 'BucketState.isPublished(isPublished: $isPublished)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IsPublished &&
            (identical(other.isPublished, isPublished) ||
                other.isPublished == isPublished));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isPublished);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IsPublishedCopyWith<_$_IsPublished> get copyWith =>
      __$$_IsPublishedCopyWithImpl<_$_IsPublished>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)
        loaded,
    required TResult Function(Questions? questions) questionAdded,
    required TResult Function(Questions? question, int questionIndex)
        answerAdded,
    required TResult Function() success,
    required TResult Function(bool isPublished) isPublished,
    required TResult Function(String error) error,
    required TResult Function() searchLoading,
    required TResult Function(String error) searchError,
    required TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)
        searchLoaded,
    required TResult Function(int? completedQuiz, int? joined) calculated,
  }) {
    return isPublished(this.isPublished);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        loaded,
    TResult? Function(Questions? questions)? questionAdded,
    TResult? Function(Questions? question, int questionIndex)? answerAdded,
    TResult? Function()? success,
    TResult? Function(bool isPublished)? isPublished,
    TResult? Function(String error)? error,
    TResult? Function()? searchLoading,
    TResult? Function(String error)? searchError,
    TResult? Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        searchLoaded,
    TResult? Function(int? completedQuiz, int? joined)? calculated,
  }) {
    return isPublished?.call(this.isPublished);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        loaded,
    TResult Function(Questions? questions)? questionAdded,
    TResult Function(Questions? question, int questionIndex)? answerAdded,
    TResult Function()? success,
    TResult Function(bool isPublished)? isPublished,
    TResult Function(String error)? error,
    TResult Function()? searchLoading,
    TResult Function(String error)? searchError,
    TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        searchLoaded,
    TResult Function(int? completedQuiz, int? joined)? calculated,
    required TResult orElse(),
  }) {
    if (isPublished != null) {
      return isPublished(this.isPublished);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_QuestionAdded value) questionAdded,
    required TResult Function(_AnswerAdded value) answerAdded,
    required TResult Function(_Success value) success,
    required TResult Function(_IsPublished value) isPublished,
    required TResult Function(_Error value) error,
    required TResult Function(_SearchLoading value) searchLoading,
    required TResult Function(_SearchError value) searchError,
    required TResult Function(_SearchLoaded value) searchLoaded,
    required TResult Function(_Calculated value) calculated,
  }) {
    return isPublished(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_QuestionAdded value)? questionAdded,
    TResult? Function(_AnswerAdded value)? answerAdded,
    TResult? Function(_Success value)? success,
    TResult? Function(_IsPublished value)? isPublished,
    TResult? Function(_Error value)? error,
    TResult? Function(_SearchLoading value)? searchLoading,
    TResult? Function(_SearchError value)? searchError,
    TResult? Function(_SearchLoaded value)? searchLoaded,
    TResult? Function(_Calculated value)? calculated,
  }) {
    return isPublished?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_QuestionAdded value)? questionAdded,
    TResult Function(_AnswerAdded value)? answerAdded,
    TResult Function(_Success value)? success,
    TResult Function(_IsPublished value)? isPublished,
    TResult Function(_Error value)? error,
    TResult Function(_SearchLoading value)? searchLoading,
    TResult Function(_SearchError value)? searchError,
    TResult Function(_SearchLoaded value)? searchLoaded,
    TResult Function(_Calculated value)? calculated,
    required TResult orElse(),
  }) {
    if (isPublished != null) {
      return isPublished(this);
    }
    return orElse();
  }
}

abstract class _IsPublished extends BucketState {
  const factory _IsPublished({required final bool isPublished}) =
      _$_IsPublished;
  const _IsPublished._() : super._();

  bool get isPublished;
  @JsonKey(ignore: true)
  _$$_IsPublishedCopyWith<_$_IsPublished> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$BucketStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_Error(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error extends _Error {
  const _$_Error({required this.error}) : super._();

  @override
  final String error;

  @override
  String toString() {
    return 'BucketState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)
        loaded,
    required TResult Function(Questions? questions) questionAdded,
    required TResult Function(Questions? question, int questionIndex)
        answerAdded,
    required TResult Function() success,
    required TResult Function(bool isPublished) isPublished,
    required TResult Function(String error) error,
    required TResult Function() searchLoading,
    required TResult Function(String error) searchError,
    required TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)
        searchLoaded,
    required TResult Function(int? completedQuiz, int? joined) calculated,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        loaded,
    TResult? Function(Questions? questions)? questionAdded,
    TResult? Function(Questions? question, int questionIndex)? answerAdded,
    TResult? Function()? success,
    TResult? Function(bool isPublished)? isPublished,
    TResult? Function(String error)? error,
    TResult? Function()? searchLoading,
    TResult? Function(String error)? searchError,
    TResult? Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        searchLoaded,
    TResult? Function(int? completedQuiz, int? joined)? calculated,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        loaded,
    TResult Function(Questions? questions)? questionAdded,
    TResult Function(Questions? question, int questionIndex)? answerAdded,
    TResult Function()? success,
    TResult Function(bool isPublished)? isPublished,
    TResult Function(String error)? error,
    TResult Function()? searchLoading,
    TResult Function(String error)? searchError,
    TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        searchLoaded,
    TResult Function(int? completedQuiz, int? joined)? calculated,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_QuestionAdded value) questionAdded,
    required TResult Function(_AnswerAdded value) answerAdded,
    required TResult Function(_Success value) success,
    required TResult Function(_IsPublished value) isPublished,
    required TResult Function(_Error value) error,
    required TResult Function(_SearchLoading value) searchLoading,
    required TResult Function(_SearchError value) searchError,
    required TResult Function(_SearchLoaded value) searchLoaded,
    required TResult Function(_Calculated value) calculated,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_QuestionAdded value)? questionAdded,
    TResult? Function(_AnswerAdded value)? answerAdded,
    TResult? Function(_Success value)? success,
    TResult? Function(_IsPublished value)? isPublished,
    TResult? Function(_Error value)? error,
    TResult? Function(_SearchLoading value)? searchLoading,
    TResult? Function(_SearchError value)? searchError,
    TResult? Function(_SearchLoaded value)? searchLoaded,
    TResult? Function(_Calculated value)? calculated,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_QuestionAdded value)? questionAdded,
    TResult Function(_AnswerAdded value)? answerAdded,
    TResult Function(_Success value)? success,
    TResult Function(_IsPublished value)? isPublished,
    TResult Function(_Error value)? error,
    TResult Function(_SearchLoading value)? searchLoading,
    TResult Function(_SearchError value)? searchError,
    TResult Function(_SearchLoaded value)? searchLoaded,
    TResult Function(_Calculated value)? calculated,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error extends BucketState {
  const factory _Error({required final String error}) = _$_Error;
  const _Error._() : super._();

  String get error;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchLoadingCopyWith<$Res> {
  factory _$$_SearchLoadingCopyWith(
          _$_SearchLoading value, $Res Function(_$_SearchLoading) then) =
      __$$_SearchLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchLoadingCopyWithImpl<$Res>
    extends _$BucketStateCopyWithImpl<$Res, _$_SearchLoading>
    implements _$$_SearchLoadingCopyWith<$Res> {
  __$$_SearchLoadingCopyWithImpl(
      _$_SearchLoading _value, $Res Function(_$_SearchLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SearchLoading extends _SearchLoading {
  const _$_SearchLoading() : super._();

  @override
  String toString() {
    return 'BucketState.searchLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SearchLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)
        loaded,
    required TResult Function(Questions? questions) questionAdded,
    required TResult Function(Questions? question, int questionIndex)
        answerAdded,
    required TResult Function() success,
    required TResult Function(bool isPublished) isPublished,
    required TResult Function(String error) error,
    required TResult Function() searchLoading,
    required TResult Function(String error) searchError,
    required TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)
        searchLoaded,
    required TResult Function(int? completedQuiz, int? joined) calculated,
  }) {
    return searchLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        loaded,
    TResult? Function(Questions? questions)? questionAdded,
    TResult? Function(Questions? question, int questionIndex)? answerAdded,
    TResult? Function()? success,
    TResult? Function(bool isPublished)? isPublished,
    TResult? Function(String error)? error,
    TResult? Function()? searchLoading,
    TResult? Function(String error)? searchError,
    TResult? Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        searchLoaded,
    TResult? Function(int? completedQuiz, int? joined)? calculated,
  }) {
    return searchLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        loaded,
    TResult Function(Questions? questions)? questionAdded,
    TResult Function(Questions? question, int questionIndex)? answerAdded,
    TResult Function()? success,
    TResult Function(bool isPublished)? isPublished,
    TResult Function(String error)? error,
    TResult Function()? searchLoading,
    TResult Function(String error)? searchError,
    TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        searchLoaded,
    TResult Function(int? completedQuiz, int? joined)? calculated,
    required TResult orElse(),
  }) {
    if (searchLoading != null) {
      return searchLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_QuestionAdded value) questionAdded,
    required TResult Function(_AnswerAdded value) answerAdded,
    required TResult Function(_Success value) success,
    required TResult Function(_IsPublished value) isPublished,
    required TResult Function(_Error value) error,
    required TResult Function(_SearchLoading value) searchLoading,
    required TResult Function(_SearchError value) searchError,
    required TResult Function(_SearchLoaded value) searchLoaded,
    required TResult Function(_Calculated value) calculated,
  }) {
    return searchLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_QuestionAdded value)? questionAdded,
    TResult? Function(_AnswerAdded value)? answerAdded,
    TResult? Function(_Success value)? success,
    TResult? Function(_IsPublished value)? isPublished,
    TResult? Function(_Error value)? error,
    TResult? Function(_SearchLoading value)? searchLoading,
    TResult? Function(_SearchError value)? searchError,
    TResult? Function(_SearchLoaded value)? searchLoaded,
    TResult? Function(_Calculated value)? calculated,
  }) {
    return searchLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_QuestionAdded value)? questionAdded,
    TResult Function(_AnswerAdded value)? answerAdded,
    TResult Function(_Success value)? success,
    TResult Function(_IsPublished value)? isPublished,
    TResult Function(_Error value)? error,
    TResult Function(_SearchLoading value)? searchLoading,
    TResult Function(_SearchError value)? searchError,
    TResult Function(_SearchLoaded value)? searchLoaded,
    TResult Function(_Calculated value)? calculated,
    required TResult orElse(),
  }) {
    if (searchLoading != null) {
      return searchLoading(this);
    }
    return orElse();
  }
}

abstract class _SearchLoading extends BucketState {
  const factory _SearchLoading() = _$_SearchLoading;
  const _SearchLoading._() : super._();
}

/// @nodoc
abstract class _$$_SearchErrorCopyWith<$Res> {
  factory _$$_SearchErrorCopyWith(
          _$_SearchError value, $Res Function(_$_SearchError) then) =
      __$$_SearchErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_SearchErrorCopyWithImpl<$Res>
    extends _$BucketStateCopyWithImpl<$Res, _$_SearchError>
    implements _$$_SearchErrorCopyWith<$Res> {
  __$$_SearchErrorCopyWithImpl(
      _$_SearchError _value, $Res Function(_$_SearchError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_SearchError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchError extends _SearchError {
  const _$_SearchError({required this.error}) : super._();

  @override
  final String error;

  @override
  String toString() {
    return 'BucketState.searchError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchErrorCopyWith<_$_SearchError> get copyWith =>
      __$$_SearchErrorCopyWithImpl<_$_SearchError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)
        loaded,
    required TResult Function(Questions? questions) questionAdded,
    required TResult Function(Questions? question, int questionIndex)
        answerAdded,
    required TResult Function() success,
    required TResult Function(bool isPublished) isPublished,
    required TResult Function(String error) error,
    required TResult Function() searchLoading,
    required TResult Function(String error) searchError,
    required TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)
        searchLoaded,
    required TResult Function(int? completedQuiz, int? joined) calculated,
  }) {
    return searchError(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        loaded,
    TResult? Function(Questions? questions)? questionAdded,
    TResult? Function(Questions? question, int questionIndex)? answerAdded,
    TResult? Function()? success,
    TResult? Function(bool isPublished)? isPublished,
    TResult? Function(String error)? error,
    TResult? Function()? searchLoading,
    TResult? Function(String error)? searchError,
    TResult? Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        searchLoaded,
    TResult? Function(int? completedQuiz, int? joined)? calculated,
  }) {
    return searchError?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        loaded,
    TResult Function(Questions? questions)? questionAdded,
    TResult Function(Questions? question, int questionIndex)? answerAdded,
    TResult Function()? success,
    TResult Function(bool isPublished)? isPublished,
    TResult Function(String error)? error,
    TResult Function()? searchLoading,
    TResult Function(String error)? searchError,
    TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        searchLoaded,
    TResult Function(int? completedQuiz, int? joined)? calculated,
    required TResult orElse(),
  }) {
    if (searchError != null) {
      return searchError(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_QuestionAdded value) questionAdded,
    required TResult Function(_AnswerAdded value) answerAdded,
    required TResult Function(_Success value) success,
    required TResult Function(_IsPublished value) isPublished,
    required TResult Function(_Error value) error,
    required TResult Function(_SearchLoading value) searchLoading,
    required TResult Function(_SearchError value) searchError,
    required TResult Function(_SearchLoaded value) searchLoaded,
    required TResult Function(_Calculated value) calculated,
  }) {
    return searchError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_QuestionAdded value)? questionAdded,
    TResult? Function(_AnswerAdded value)? answerAdded,
    TResult? Function(_Success value)? success,
    TResult? Function(_IsPublished value)? isPublished,
    TResult? Function(_Error value)? error,
    TResult? Function(_SearchLoading value)? searchLoading,
    TResult? Function(_SearchError value)? searchError,
    TResult? Function(_SearchLoaded value)? searchLoaded,
    TResult? Function(_Calculated value)? calculated,
  }) {
    return searchError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_QuestionAdded value)? questionAdded,
    TResult Function(_AnswerAdded value)? answerAdded,
    TResult Function(_Success value)? success,
    TResult Function(_IsPublished value)? isPublished,
    TResult Function(_Error value)? error,
    TResult Function(_SearchLoading value)? searchLoading,
    TResult Function(_SearchError value)? searchError,
    TResult Function(_SearchLoaded value)? searchLoaded,
    TResult Function(_Calculated value)? calculated,
    required TResult orElse(),
  }) {
    if (searchError != null) {
      return searchError(this);
    }
    return orElse();
  }
}

abstract class _SearchError extends BucketState {
  const factory _SearchError({required final String error}) = _$_SearchError;
  const _SearchError._() : super._();

  String get error;
  @JsonKey(ignore: true)
  _$$_SearchErrorCopyWith<_$_SearchError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchLoadedCopyWith<$Res> {
  factory _$$_SearchLoadedCopyWith(
          _$_SearchLoaded value, $Res Function(_$_SearchLoaded) then) =
      __$$_SearchLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Questions> questionsList, Bucket? bucket, bool? isPublished});

  $BucketCopyWith<$Res>? get bucket;
}

/// @nodoc
class __$$_SearchLoadedCopyWithImpl<$Res>
    extends _$BucketStateCopyWithImpl<$Res, _$_SearchLoaded>
    implements _$$_SearchLoadedCopyWith<$Res> {
  __$$_SearchLoadedCopyWithImpl(
      _$_SearchLoaded _value, $Res Function(_$_SearchLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionsList = null,
    Object? bucket = freezed,
    Object? isPublished = freezed,
  }) {
    return _then(_$_SearchLoaded(
      questionsList: null == questionsList
          ? _value._questionsList
          : questionsList // ignore: cast_nullable_to_non_nullable
              as List<Questions>,
      bucket: freezed == bucket
          ? _value.bucket
          : bucket // ignore: cast_nullable_to_non_nullable
              as Bucket?,
      isPublished: freezed == isPublished
          ? _value.isPublished
          : isPublished // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BucketCopyWith<$Res>? get bucket {
    if (_value.bucket == null) {
      return null;
    }

    return $BucketCopyWith<$Res>(_value.bucket!, (value) {
      return _then(_value.copyWith(bucket: value));
    });
  }
}

/// @nodoc

class _$_SearchLoaded extends _SearchLoaded {
  const _$_SearchLoaded(
      {final List<Questions> questionsList = const [],
      this.bucket,
      this.isPublished})
      : _questionsList = questionsList,
        super._();

  final List<Questions> _questionsList;
  @override
  @JsonKey()
  List<Questions> get questionsList {
    if (_questionsList is EqualUnmodifiableListView) return _questionsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questionsList);
  }

  @override
  final Bucket? bucket;
  @override
  final bool? isPublished;

  @override
  String toString() {
    return 'BucketState.searchLoaded(questionsList: $questionsList, bucket: $bucket, isPublished: $isPublished)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchLoaded &&
            const DeepCollectionEquality()
                .equals(other._questionsList, _questionsList) &&
            (identical(other.bucket, bucket) || other.bucket == bucket) &&
            (identical(other.isPublished, isPublished) ||
                other.isPublished == isPublished));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_questionsList), bucket, isPublished);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchLoadedCopyWith<_$_SearchLoaded> get copyWith =>
      __$$_SearchLoadedCopyWithImpl<_$_SearchLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)
        loaded,
    required TResult Function(Questions? questions) questionAdded,
    required TResult Function(Questions? question, int questionIndex)
        answerAdded,
    required TResult Function() success,
    required TResult Function(bool isPublished) isPublished,
    required TResult Function(String error) error,
    required TResult Function() searchLoading,
    required TResult Function(String error) searchError,
    required TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)
        searchLoaded,
    required TResult Function(int? completedQuiz, int? joined) calculated,
  }) {
    return searchLoaded(questionsList, bucket, this.isPublished);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        loaded,
    TResult? Function(Questions? questions)? questionAdded,
    TResult? Function(Questions? question, int questionIndex)? answerAdded,
    TResult? Function()? success,
    TResult? Function(bool isPublished)? isPublished,
    TResult? Function(String error)? error,
    TResult? Function()? searchLoading,
    TResult? Function(String error)? searchError,
    TResult? Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        searchLoaded,
    TResult? Function(int? completedQuiz, int? joined)? calculated,
  }) {
    return searchLoaded?.call(questionsList, bucket, this.isPublished);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        loaded,
    TResult Function(Questions? questions)? questionAdded,
    TResult Function(Questions? question, int questionIndex)? answerAdded,
    TResult Function()? success,
    TResult Function(bool isPublished)? isPublished,
    TResult Function(String error)? error,
    TResult Function()? searchLoading,
    TResult Function(String error)? searchError,
    TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        searchLoaded,
    TResult Function(int? completedQuiz, int? joined)? calculated,
    required TResult orElse(),
  }) {
    if (searchLoaded != null) {
      return searchLoaded(questionsList, bucket, this.isPublished);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_QuestionAdded value) questionAdded,
    required TResult Function(_AnswerAdded value) answerAdded,
    required TResult Function(_Success value) success,
    required TResult Function(_IsPublished value) isPublished,
    required TResult Function(_Error value) error,
    required TResult Function(_SearchLoading value) searchLoading,
    required TResult Function(_SearchError value) searchError,
    required TResult Function(_SearchLoaded value) searchLoaded,
    required TResult Function(_Calculated value) calculated,
  }) {
    return searchLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_QuestionAdded value)? questionAdded,
    TResult? Function(_AnswerAdded value)? answerAdded,
    TResult? Function(_Success value)? success,
    TResult? Function(_IsPublished value)? isPublished,
    TResult? Function(_Error value)? error,
    TResult? Function(_SearchLoading value)? searchLoading,
    TResult? Function(_SearchError value)? searchError,
    TResult? Function(_SearchLoaded value)? searchLoaded,
    TResult? Function(_Calculated value)? calculated,
  }) {
    return searchLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_QuestionAdded value)? questionAdded,
    TResult Function(_AnswerAdded value)? answerAdded,
    TResult Function(_Success value)? success,
    TResult Function(_IsPublished value)? isPublished,
    TResult Function(_Error value)? error,
    TResult Function(_SearchLoading value)? searchLoading,
    TResult Function(_SearchError value)? searchError,
    TResult Function(_SearchLoaded value)? searchLoaded,
    TResult Function(_Calculated value)? calculated,
    required TResult orElse(),
  }) {
    if (searchLoaded != null) {
      return searchLoaded(this);
    }
    return orElse();
  }
}

abstract class _SearchLoaded extends BucketState {
  const factory _SearchLoaded(
      {final List<Questions> questionsList,
      final Bucket? bucket,
      final bool? isPublished}) = _$_SearchLoaded;
  const _SearchLoaded._() : super._();

  List<Questions> get questionsList;
  Bucket? get bucket;
  bool? get isPublished;
  @JsonKey(ignore: true)
  _$$_SearchLoadedCopyWith<_$_SearchLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CalculatedCopyWith<$Res> {
  factory _$$_CalculatedCopyWith(
          _$_Calculated value, $Res Function(_$_Calculated) then) =
      __$$_CalculatedCopyWithImpl<$Res>;
  @useResult
  $Res call({int? completedQuiz, int? joined});
}

/// @nodoc
class __$$_CalculatedCopyWithImpl<$Res>
    extends _$BucketStateCopyWithImpl<$Res, _$_Calculated>
    implements _$$_CalculatedCopyWith<$Res> {
  __$$_CalculatedCopyWithImpl(
      _$_Calculated _value, $Res Function(_$_Calculated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? completedQuiz = freezed,
    Object? joined = freezed,
  }) {
    return _then(_$_Calculated(
      completedQuiz: freezed == completedQuiz
          ? _value.completedQuiz
          : completedQuiz // ignore: cast_nullable_to_non_nullable
              as int?,
      joined: freezed == joined
          ? _value.joined
          : joined // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_Calculated extends _Calculated {
  const _$_Calculated({this.completedQuiz, this.joined}) : super._();

  @override
  final int? completedQuiz;
  @override
  final int? joined;

  @override
  String toString() {
    return 'BucketState.calculated(completedQuiz: $completedQuiz, joined: $joined)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Calculated &&
            (identical(other.completedQuiz, completedQuiz) ||
                other.completedQuiz == completedQuiz) &&
            (identical(other.joined, joined) || other.joined == joined));
  }

  @override
  int get hashCode => Object.hash(runtimeType, completedQuiz, joined);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CalculatedCopyWith<_$_Calculated> get copyWith =>
      __$$_CalculatedCopyWithImpl<_$_Calculated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)
        loaded,
    required TResult Function(Questions? questions) questionAdded,
    required TResult Function(Questions? question, int questionIndex)
        answerAdded,
    required TResult Function() success,
    required TResult Function(bool isPublished) isPublished,
    required TResult Function(String error) error,
    required TResult Function() searchLoading,
    required TResult Function(String error) searchError,
    required TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)
        searchLoaded,
    required TResult Function(int? completedQuiz, int? joined) calculated,
  }) {
    return calculated(completedQuiz, joined);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        loaded,
    TResult? Function(Questions? questions)? questionAdded,
    TResult? Function(Questions? question, int questionIndex)? answerAdded,
    TResult? Function()? success,
    TResult? Function(bool isPublished)? isPublished,
    TResult? Function(String error)? error,
    TResult? Function()? searchLoading,
    TResult? Function(String error)? searchError,
    TResult? Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        searchLoaded,
    TResult? Function(int? completedQuiz, int? joined)? calculated,
  }) {
    return calculated?.call(completedQuiz, joined);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        loaded,
    TResult Function(Questions? questions)? questionAdded,
    TResult Function(Questions? question, int questionIndex)? answerAdded,
    TResult Function()? success,
    TResult Function(bool isPublished)? isPublished,
    TResult Function(String error)? error,
    TResult Function()? searchLoading,
    TResult Function(String error)? searchError,
    TResult Function(
            List<Questions> questionsList, Bucket? bucket, bool? isPublished)?
        searchLoaded,
    TResult Function(int? completedQuiz, int? joined)? calculated,
    required TResult orElse(),
  }) {
    if (calculated != null) {
      return calculated(completedQuiz, joined);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_QuestionAdded value) questionAdded,
    required TResult Function(_AnswerAdded value) answerAdded,
    required TResult Function(_Success value) success,
    required TResult Function(_IsPublished value) isPublished,
    required TResult Function(_Error value) error,
    required TResult Function(_SearchLoading value) searchLoading,
    required TResult Function(_SearchError value) searchError,
    required TResult Function(_SearchLoaded value) searchLoaded,
    required TResult Function(_Calculated value) calculated,
  }) {
    return calculated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_QuestionAdded value)? questionAdded,
    TResult? Function(_AnswerAdded value)? answerAdded,
    TResult? Function(_Success value)? success,
    TResult? Function(_IsPublished value)? isPublished,
    TResult? Function(_Error value)? error,
    TResult? Function(_SearchLoading value)? searchLoading,
    TResult? Function(_SearchError value)? searchError,
    TResult? Function(_SearchLoaded value)? searchLoaded,
    TResult? Function(_Calculated value)? calculated,
  }) {
    return calculated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_QuestionAdded value)? questionAdded,
    TResult Function(_AnswerAdded value)? answerAdded,
    TResult Function(_Success value)? success,
    TResult Function(_IsPublished value)? isPublished,
    TResult Function(_Error value)? error,
    TResult Function(_SearchLoading value)? searchLoading,
    TResult Function(_SearchError value)? searchError,
    TResult Function(_SearchLoaded value)? searchLoaded,
    TResult Function(_Calculated value)? calculated,
    required TResult orElse(),
  }) {
    if (calculated != null) {
      return calculated(this);
    }
    return orElse();
  }
}

abstract class _Calculated extends BucketState {
  const factory _Calculated({final int? completedQuiz, final int? joined}) =
      _$_Calculated;
  const _Calculated._() : super._();

  int? get completedQuiz;
  int? get joined;
  @JsonKey(ignore: true)
  _$$_CalculatedCopyWith<_$_Calculated> get copyWith =>
      throw _privateConstructorUsedError;
}
