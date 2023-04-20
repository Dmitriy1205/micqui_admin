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
    required TResult Function(Bucket? bucket) addQuestion,
    required TResult Function(String bucketId, Questions questions,
            Bucket? bucket, List<Questions>? stateQuestions)
        setQuestion,
    required TResult Function() addVariant,
    required TResult Function(String name, String category) searchByName,
    required TResult Function(
            String bucketId, Bucket? bucket, List<Questions>? stateQuestions)
        removeFromRelease,
    required TResult Function(String bucketId) publish,
    required TResult Function(String name, String category) deleteQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? bucketId)? init,
    TResult? Function(Bucket? bucket)? addQuestion,
    TResult? Function(String bucketId, Questions questions, Bucket? bucket,
            List<Questions>? stateQuestions)?
        setQuestion,
    TResult? Function()? addVariant,
    TResult? Function(String name, String category)? searchByName,
    TResult? Function(
            String bucketId, Bucket? bucket, List<Questions>? stateQuestions)?
        removeFromRelease,
    TResult? Function(String bucketId)? publish,
    TResult? Function(String name, String category)? deleteQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? bucketId)? init,
    TResult Function(Bucket? bucket)? addQuestion,
    TResult Function(String bucketId, Questions questions, Bucket? bucket,
            List<Questions>? stateQuestions)?
        setQuestion,
    TResult Function()? addVariant,
    TResult Function(String name, String category)? searchByName,
    TResult Function(
            String bucketId, Bucket? bucket, List<Questions>? stateQuestions)?
        removeFromRelease,
    TResult Function(String bucketId)? publish,
    TResult Function(String name, String category)? deleteQuestion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddQuestion value) addQuestion,
    required TResult Function(_SetQuestion value) setQuestion,
    required TResult Function(_AddVariant value) addVariant,
    required TResult Function(_SearchByName value) searchByName,
    required TResult Function(_RemoveFromRelease value) removeFromRelease,
    required TResult Function(_Publish value) publish,
    required TResult Function(_DeleteQuestion value) deleteQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddQuestion value)? addQuestion,
    TResult? Function(_SetQuestion value)? setQuestion,
    TResult? Function(_AddVariant value)? addVariant,
    TResult? Function(_SearchByName value)? searchByName,
    TResult? Function(_RemoveFromRelease value)? removeFromRelease,
    TResult? Function(_Publish value)? publish,
    TResult? Function(_DeleteQuestion value)? deleteQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddQuestion value)? addQuestion,
    TResult Function(_SetQuestion value)? setQuestion,
    TResult Function(_AddVariant value)? addVariant,
    TResult Function(_SearchByName value)? searchByName,
    TResult Function(_RemoveFromRelease value)? removeFromRelease,
    TResult Function(_Publish value)? publish,
    TResult Function(_DeleteQuestion value)? deleteQuestion,
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
    required TResult Function(Bucket? bucket) addQuestion,
    required TResult Function(String bucketId, Questions questions,
            Bucket? bucket, List<Questions>? stateQuestions)
        setQuestion,
    required TResult Function() addVariant,
    required TResult Function(String name, String category) searchByName,
    required TResult Function(
            String bucketId, Bucket? bucket, List<Questions>? stateQuestions)
        removeFromRelease,
    required TResult Function(String bucketId) publish,
    required TResult Function(String name, String category) deleteQuestion,
  }) {
    return init(bucketId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? bucketId)? init,
    TResult? Function(Bucket? bucket)? addQuestion,
    TResult? Function(String bucketId, Questions questions, Bucket? bucket,
            List<Questions>? stateQuestions)?
        setQuestion,
    TResult? Function()? addVariant,
    TResult? Function(String name, String category)? searchByName,
    TResult? Function(
            String bucketId, Bucket? bucket, List<Questions>? stateQuestions)?
        removeFromRelease,
    TResult? Function(String bucketId)? publish,
    TResult? Function(String name, String category)? deleteQuestion,
  }) {
    return init?.call(bucketId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? bucketId)? init,
    TResult Function(Bucket? bucket)? addQuestion,
    TResult Function(String bucketId, Questions questions, Bucket? bucket,
            List<Questions>? stateQuestions)?
        setQuestion,
    TResult Function()? addVariant,
    TResult Function(String name, String category)? searchByName,
    TResult Function(
            String bucketId, Bucket? bucket, List<Questions>? stateQuestions)?
        removeFromRelease,
    TResult Function(String bucketId)? publish,
    TResult Function(String name, String category)? deleteQuestion,
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
    required TResult Function(_AddVariant value) addVariant,
    required TResult Function(_SearchByName value) searchByName,
    required TResult Function(_RemoveFromRelease value) removeFromRelease,
    required TResult Function(_Publish value) publish,
    required TResult Function(_DeleteQuestion value) deleteQuestion,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddQuestion value)? addQuestion,
    TResult? Function(_SetQuestion value)? setQuestion,
    TResult? Function(_AddVariant value)? addVariant,
    TResult? Function(_SearchByName value)? searchByName,
    TResult? Function(_RemoveFromRelease value)? removeFromRelease,
    TResult? Function(_Publish value)? publish,
    TResult? Function(_DeleteQuestion value)? deleteQuestion,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddQuestion value)? addQuestion,
    TResult Function(_SetQuestion value)? setQuestion,
    TResult Function(_AddVariant value)? addVariant,
    TResult Function(_SearchByName value)? searchByName,
    TResult Function(_RemoveFromRelease value)? removeFromRelease,
    TResult Function(_Publish value)? publish,
    TResult Function(_DeleteQuestion value)? deleteQuestion,
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
  $Res call({Bucket? bucket});

  $BucketCopyWith<$Res>? get bucket;
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
    Object? bucket = freezed,
  }) {
    return _then(_$_AddQuestion(
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

class _$_AddQuestion implements _AddQuestion {
  const _$_AddQuestion({required this.bucket});

  @override
  final Bucket? bucket;

  @override
  String toString() {
    return 'BucketEvent.addQuestion(bucket: $bucket)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddQuestion &&
            (identical(other.bucket, bucket) || other.bucket == bucket));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bucket);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddQuestionCopyWith<_$_AddQuestion> get copyWith =>
      __$$_AddQuestionCopyWithImpl<_$_AddQuestion>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? bucketId) init,
    required TResult Function(Bucket? bucket) addQuestion,
    required TResult Function(String bucketId, Questions questions,
            Bucket? bucket, List<Questions>? stateQuestions)
        setQuestion,
    required TResult Function() addVariant,
    required TResult Function(String name, String category) searchByName,
    required TResult Function(
            String bucketId, Bucket? bucket, List<Questions>? stateQuestions)
        removeFromRelease,
    required TResult Function(String bucketId) publish,
    required TResult Function(String name, String category) deleteQuestion,
  }) {
    return addQuestion(bucket);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? bucketId)? init,
    TResult? Function(Bucket? bucket)? addQuestion,
    TResult? Function(String bucketId, Questions questions, Bucket? bucket,
            List<Questions>? stateQuestions)?
        setQuestion,
    TResult? Function()? addVariant,
    TResult? Function(String name, String category)? searchByName,
    TResult? Function(
            String bucketId, Bucket? bucket, List<Questions>? stateQuestions)?
        removeFromRelease,
    TResult? Function(String bucketId)? publish,
    TResult? Function(String name, String category)? deleteQuestion,
  }) {
    return addQuestion?.call(bucket);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? bucketId)? init,
    TResult Function(Bucket? bucket)? addQuestion,
    TResult Function(String bucketId, Questions questions, Bucket? bucket,
            List<Questions>? stateQuestions)?
        setQuestion,
    TResult Function()? addVariant,
    TResult Function(String name, String category)? searchByName,
    TResult Function(
            String bucketId, Bucket? bucket, List<Questions>? stateQuestions)?
        removeFromRelease,
    TResult Function(String bucketId)? publish,
    TResult Function(String name, String category)? deleteQuestion,
    required TResult orElse(),
  }) {
    if (addQuestion != null) {
      return addQuestion(bucket);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddQuestion value) addQuestion,
    required TResult Function(_SetQuestion value) setQuestion,
    required TResult Function(_AddVariant value) addVariant,
    required TResult Function(_SearchByName value) searchByName,
    required TResult Function(_RemoveFromRelease value) removeFromRelease,
    required TResult Function(_Publish value) publish,
    required TResult Function(_DeleteQuestion value) deleteQuestion,
  }) {
    return addQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddQuestion value)? addQuestion,
    TResult? Function(_SetQuestion value)? setQuestion,
    TResult? Function(_AddVariant value)? addVariant,
    TResult? Function(_SearchByName value)? searchByName,
    TResult? Function(_RemoveFromRelease value)? removeFromRelease,
    TResult? Function(_Publish value)? publish,
    TResult? Function(_DeleteQuestion value)? deleteQuestion,
  }) {
    return addQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddQuestion value)? addQuestion,
    TResult Function(_SetQuestion value)? setQuestion,
    TResult Function(_AddVariant value)? addVariant,
    TResult Function(_SearchByName value)? searchByName,
    TResult Function(_RemoveFromRelease value)? removeFromRelease,
    TResult Function(_Publish value)? publish,
    TResult Function(_DeleteQuestion value)? deleteQuestion,
    required TResult orElse(),
  }) {
    if (addQuestion != null) {
      return addQuestion(this);
    }
    return orElse();
  }
}

abstract class _AddQuestion implements BucketEvent {
  const factory _AddQuestion({required final Bucket? bucket}) = _$_AddQuestion;

  Bucket? get bucket;
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
      Questions questions,
      Bucket? bucket,
      List<Questions>? stateQuestions});

  $QuestionsCopyWith<$Res> get questions;
  $BucketCopyWith<$Res>? get bucket;
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
    Object? questions = null,
    Object? bucket = freezed,
    Object? stateQuestions = freezed,
  }) {
    return _then(_$_SetQuestion(
      bucketId: null == bucketId
          ? _value.bucketId
          : bucketId // ignore: cast_nullable_to_non_nullable
              as String,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as Questions,
      bucket: freezed == bucket
          ? _value.bucket
          : bucket // ignore: cast_nullable_to_non_nullable
              as Bucket?,
      stateQuestions: freezed == stateQuestions
          ? _value._stateQuestions
          : stateQuestions // ignore: cast_nullable_to_non_nullable
              as List<Questions>?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $QuestionsCopyWith<$Res> get questions {
    return $QuestionsCopyWith<$Res>(_value.questions, (value) {
      return _then(_value.copyWith(questions: value));
    });
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

class _$_SetQuestion implements _SetQuestion {
  const _$_SetQuestion(
      {required this.bucketId,
      required this.questions,
      this.bucket,
      final List<Questions>? stateQuestions})
      : _stateQuestions = stateQuestions;

  @override
  final String bucketId;
  @override
  final Questions questions;
  @override
  final Bucket? bucket;
  final List<Questions>? _stateQuestions;
  @override
  List<Questions>? get stateQuestions {
    final value = _stateQuestions;
    if (value == null) return null;
    if (_stateQuestions is EqualUnmodifiableListView) return _stateQuestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BucketEvent.setQuestion(bucketId: $bucketId, questions: $questions, bucket: $bucket, stateQuestions: $stateQuestions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetQuestion &&
            (identical(other.bucketId, bucketId) ||
                other.bucketId == bucketId) &&
            (identical(other.questions, questions) ||
                other.questions == questions) &&
            (identical(other.bucket, bucket) || other.bucket == bucket) &&
            const DeepCollectionEquality()
                .equals(other._stateQuestions, _stateQuestions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bucketId, questions, bucket,
      const DeepCollectionEquality().hash(_stateQuestions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetQuestionCopyWith<_$_SetQuestion> get copyWith =>
      __$$_SetQuestionCopyWithImpl<_$_SetQuestion>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? bucketId) init,
    required TResult Function(Bucket? bucket) addQuestion,
    required TResult Function(String bucketId, Questions questions,
            Bucket? bucket, List<Questions>? stateQuestions)
        setQuestion,
    required TResult Function() addVariant,
    required TResult Function(String name, String category) searchByName,
    required TResult Function(
            String bucketId, Bucket? bucket, List<Questions>? stateQuestions)
        removeFromRelease,
    required TResult Function(String bucketId) publish,
    required TResult Function(String name, String category) deleteQuestion,
  }) {
    return setQuestion(bucketId, questions, bucket, stateQuestions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? bucketId)? init,
    TResult? Function(Bucket? bucket)? addQuestion,
    TResult? Function(String bucketId, Questions questions, Bucket? bucket,
            List<Questions>? stateQuestions)?
        setQuestion,
    TResult? Function()? addVariant,
    TResult? Function(String name, String category)? searchByName,
    TResult? Function(
            String bucketId, Bucket? bucket, List<Questions>? stateQuestions)?
        removeFromRelease,
    TResult? Function(String bucketId)? publish,
    TResult? Function(String name, String category)? deleteQuestion,
  }) {
    return setQuestion?.call(bucketId, questions, bucket, stateQuestions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? bucketId)? init,
    TResult Function(Bucket? bucket)? addQuestion,
    TResult Function(String bucketId, Questions questions, Bucket? bucket,
            List<Questions>? stateQuestions)?
        setQuestion,
    TResult Function()? addVariant,
    TResult Function(String name, String category)? searchByName,
    TResult Function(
            String bucketId, Bucket? bucket, List<Questions>? stateQuestions)?
        removeFromRelease,
    TResult Function(String bucketId)? publish,
    TResult Function(String name, String category)? deleteQuestion,
    required TResult orElse(),
  }) {
    if (setQuestion != null) {
      return setQuestion(bucketId, questions, bucket, stateQuestions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddQuestion value) addQuestion,
    required TResult Function(_SetQuestion value) setQuestion,
    required TResult Function(_AddVariant value) addVariant,
    required TResult Function(_SearchByName value) searchByName,
    required TResult Function(_RemoveFromRelease value) removeFromRelease,
    required TResult Function(_Publish value) publish,
    required TResult Function(_DeleteQuestion value) deleteQuestion,
  }) {
    return setQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddQuestion value)? addQuestion,
    TResult? Function(_SetQuestion value)? setQuestion,
    TResult? Function(_AddVariant value)? addVariant,
    TResult? Function(_SearchByName value)? searchByName,
    TResult? Function(_RemoveFromRelease value)? removeFromRelease,
    TResult? Function(_Publish value)? publish,
    TResult? Function(_DeleteQuestion value)? deleteQuestion,
  }) {
    return setQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddQuestion value)? addQuestion,
    TResult Function(_SetQuestion value)? setQuestion,
    TResult Function(_AddVariant value)? addVariant,
    TResult Function(_SearchByName value)? searchByName,
    TResult Function(_RemoveFromRelease value)? removeFromRelease,
    TResult Function(_Publish value)? publish,
    TResult Function(_DeleteQuestion value)? deleteQuestion,
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
      required final Questions questions,
      final Bucket? bucket,
      final List<Questions>? stateQuestions}) = _$_SetQuestion;

  String get bucketId;
  Questions get questions;
  Bucket? get bucket;
  List<Questions>? get stateQuestions;
  @JsonKey(ignore: true)
  _$$_SetQuestionCopyWith<_$_SetQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddVariantCopyWith<$Res> {
  factory _$$_AddVariantCopyWith(
          _$_AddVariant value, $Res Function(_$_AddVariant) then) =
      __$$_AddVariantCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AddVariantCopyWithImpl<$Res>
    extends _$BucketEventCopyWithImpl<$Res, _$_AddVariant>
    implements _$$_AddVariantCopyWith<$Res> {
  __$$_AddVariantCopyWithImpl(
      _$_AddVariant _value, $Res Function(_$_AddVariant) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AddVariant implements _AddVariant {
  const _$_AddVariant();

  @override
  String toString() {
    return 'BucketEvent.addVariant()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AddVariant);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? bucketId) init,
    required TResult Function(Bucket? bucket) addQuestion,
    required TResult Function(String bucketId, Questions questions,
            Bucket? bucket, List<Questions>? stateQuestions)
        setQuestion,
    required TResult Function() addVariant,
    required TResult Function(String name, String category) searchByName,
    required TResult Function(
            String bucketId, Bucket? bucket, List<Questions>? stateQuestions)
        removeFromRelease,
    required TResult Function(String bucketId) publish,
    required TResult Function(String name, String category) deleteQuestion,
  }) {
    return addVariant();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? bucketId)? init,
    TResult? Function(Bucket? bucket)? addQuestion,
    TResult? Function(String bucketId, Questions questions, Bucket? bucket,
            List<Questions>? stateQuestions)?
        setQuestion,
    TResult? Function()? addVariant,
    TResult? Function(String name, String category)? searchByName,
    TResult? Function(
            String bucketId, Bucket? bucket, List<Questions>? stateQuestions)?
        removeFromRelease,
    TResult? Function(String bucketId)? publish,
    TResult? Function(String name, String category)? deleteQuestion,
  }) {
    return addVariant?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? bucketId)? init,
    TResult Function(Bucket? bucket)? addQuestion,
    TResult Function(String bucketId, Questions questions, Bucket? bucket,
            List<Questions>? stateQuestions)?
        setQuestion,
    TResult Function()? addVariant,
    TResult Function(String name, String category)? searchByName,
    TResult Function(
            String bucketId, Bucket? bucket, List<Questions>? stateQuestions)?
        removeFromRelease,
    TResult Function(String bucketId)? publish,
    TResult Function(String name, String category)? deleteQuestion,
    required TResult orElse(),
  }) {
    if (addVariant != null) {
      return addVariant();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddQuestion value) addQuestion,
    required TResult Function(_SetQuestion value) setQuestion,
    required TResult Function(_AddVariant value) addVariant,
    required TResult Function(_SearchByName value) searchByName,
    required TResult Function(_RemoveFromRelease value) removeFromRelease,
    required TResult Function(_Publish value) publish,
    required TResult Function(_DeleteQuestion value) deleteQuestion,
  }) {
    return addVariant(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddQuestion value)? addQuestion,
    TResult? Function(_SetQuestion value)? setQuestion,
    TResult? Function(_AddVariant value)? addVariant,
    TResult? Function(_SearchByName value)? searchByName,
    TResult? Function(_RemoveFromRelease value)? removeFromRelease,
    TResult? Function(_Publish value)? publish,
    TResult? Function(_DeleteQuestion value)? deleteQuestion,
  }) {
    return addVariant?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddQuestion value)? addQuestion,
    TResult Function(_SetQuestion value)? setQuestion,
    TResult Function(_AddVariant value)? addVariant,
    TResult Function(_SearchByName value)? searchByName,
    TResult Function(_RemoveFromRelease value)? removeFromRelease,
    TResult Function(_Publish value)? publish,
    TResult Function(_DeleteQuestion value)? deleteQuestion,
    required TResult orElse(),
  }) {
    if (addVariant != null) {
      return addVariant(this);
    }
    return orElse();
  }
}

abstract class _AddVariant implements BucketEvent {
  const factory _AddVariant() = _$_AddVariant;
}

/// @nodoc
abstract class _$$_SearchByNameCopyWith<$Res> {
  factory _$$_SearchByNameCopyWith(
          _$_SearchByName value, $Res Function(_$_SearchByName) then) =
      __$$_SearchByNameCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String category});
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
    Object? category = null,
  }) {
    return _then(_$_SearchByName(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchByName implements _SearchByName {
  const _$_SearchByName({required this.name, required this.category});

  @override
  final String name;
  @override
  final String category;

  @override
  String toString() {
    return 'BucketEvent.searchByName(name: $name, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchByName &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchByNameCopyWith<_$_SearchByName> get copyWith =>
      __$$_SearchByNameCopyWithImpl<_$_SearchByName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? bucketId) init,
    required TResult Function(Bucket? bucket) addQuestion,
    required TResult Function(String bucketId, Questions questions,
            Bucket? bucket, List<Questions>? stateQuestions)
        setQuestion,
    required TResult Function() addVariant,
    required TResult Function(String name, String category) searchByName,
    required TResult Function(
            String bucketId, Bucket? bucket, List<Questions>? stateQuestions)
        removeFromRelease,
    required TResult Function(String bucketId) publish,
    required TResult Function(String name, String category) deleteQuestion,
  }) {
    return searchByName(name, category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? bucketId)? init,
    TResult? Function(Bucket? bucket)? addQuestion,
    TResult? Function(String bucketId, Questions questions, Bucket? bucket,
            List<Questions>? stateQuestions)?
        setQuestion,
    TResult? Function()? addVariant,
    TResult? Function(String name, String category)? searchByName,
    TResult? Function(
            String bucketId, Bucket? bucket, List<Questions>? stateQuestions)?
        removeFromRelease,
    TResult? Function(String bucketId)? publish,
    TResult? Function(String name, String category)? deleteQuestion,
  }) {
    return searchByName?.call(name, category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? bucketId)? init,
    TResult Function(Bucket? bucket)? addQuestion,
    TResult Function(String bucketId, Questions questions, Bucket? bucket,
            List<Questions>? stateQuestions)?
        setQuestion,
    TResult Function()? addVariant,
    TResult Function(String name, String category)? searchByName,
    TResult Function(
            String bucketId, Bucket? bucket, List<Questions>? stateQuestions)?
        removeFromRelease,
    TResult Function(String bucketId)? publish,
    TResult Function(String name, String category)? deleteQuestion,
    required TResult orElse(),
  }) {
    if (searchByName != null) {
      return searchByName(name, category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddQuestion value) addQuestion,
    required TResult Function(_SetQuestion value) setQuestion,
    required TResult Function(_AddVariant value) addVariant,
    required TResult Function(_SearchByName value) searchByName,
    required TResult Function(_RemoveFromRelease value) removeFromRelease,
    required TResult Function(_Publish value) publish,
    required TResult Function(_DeleteQuestion value) deleteQuestion,
  }) {
    return searchByName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddQuestion value)? addQuestion,
    TResult? Function(_SetQuestion value)? setQuestion,
    TResult? Function(_AddVariant value)? addVariant,
    TResult? Function(_SearchByName value)? searchByName,
    TResult? Function(_RemoveFromRelease value)? removeFromRelease,
    TResult? Function(_Publish value)? publish,
    TResult? Function(_DeleteQuestion value)? deleteQuestion,
  }) {
    return searchByName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddQuestion value)? addQuestion,
    TResult Function(_SetQuestion value)? setQuestion,
    TResult Function(_AddVariant value)? addVariant,
    TResult Function(_SearchByName value)? searchByName,
    TResult Function(_RemoveFromRelease value)? removeFromRelease,
    TResult Function(_Publish value)? publish,
    TResult Function(_DeleteQuestion value)? deleteQuestion,
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
      required final String category}) = _$_SearchByName;

  String get name;
  String get category;
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
  $Res call({String bucketId, Bucket? bucket, List<Questions>? stateQuestions});

  $BucketCopyWith<$Res>? get bucket;
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
    Object? bucket = freezed,
    Object? stateQuestions = freezed,
  }) {
    return _then(_$_RemoveFromRelease(
      bucketId: null == bucketId
          ? _value.bucketId
          : bucketId // ignore: cast_nullable_to_non_nullable
              as String,
      bucket: freezed == bucket
          ? _value.bucket
          : bucket // ignore: cast_nullable_to_non_nullable
              as Bucket?,
      stateQuestions: freezed == stateQuestions
          ? _value._stateQuestions
          : stateQuestions // ignore: cast_nullable_to_non_nullable
              as List<Questions>?,
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

class _$_RemoveFromRelease implements _RemoveFromRelease {
  const _$_RemoveFromRelease(
      {required this.bucketId,
      this.bucket,
      final List<Questions>? stateQuestions})
      : _stateQuestions = stateQuestions;

  @override
  final String bucketId;
  @override
  final Bucket? bucket;
  final List<Questions>? _stateQuestions;
  @override
  List<Questions>? get stateQuestions {
    final value = _stateQuestions;
    if (value == null) return null;
    if (_stateQuestions is EqualUnmodifiableListView) return _stateQuestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BucketEvent.removeFromRelease(bucketId: $bucketId, bucket: $bucket, stateQuestions: $stateQuestions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveFromRelease &&
            (identical(other.bucketId, bucketId) ||
                other.bucketId == bucketId) &&
            (identical(other.bucket, bucket) || other.bucket == bucket) &&
            const DeepCollectionEquality()
                .equals(other._stateQuestions, _stateQuestions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bucketId, bucket,
      const DeepCollectionEquality().hash(_stateQuestions));

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
    required TResult Function(Bucket? bucket) addQuestion,
    required TResult Function(String bucketId, Questions questions,
            Bucket? bucket, List<Questions>? stateQuestions)
        setQuestion,
    required TResult Function() addVariant,
    required TResult Function(String name, String category) searchByName,
    required TResult Function(
            String bucketId, Bucket? bucket, List<Questions>? stateQuestions)
        removeFromRelease,
    required TResult Function(String bucketId) publish,
    required TResult Function(String name, String category) deleteQuestion,
  }) {
    return removeFromRelease(bucketId, bucket, stateQuestions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? bucketId)? init,
    TResult? Function(Bucket? bucket)? addQuestion,
    TResult? Function(String bucketId, Questions questions, Bucket? bucket,
            List<Questions>? stateQuestions)?
        setQuestion,
    TResult? Function()? addVariant,
    TResult? Function(String name, String category)? searchByName,
    TResult? Function(
            String bucketId, Bucket? bucket, List<Questions>? stateQuestions)?
        removeFromRelease,
    TResult? Function(String bucketId)? publish,
    TResult? Function(String name, String category)? deleteQuestion,
  }) {
    return removeFromRelease?.call(bucketId, bucket, stateQuestions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? bucketId)? init,
    TResult Function(Bucket? bucket)? addQuestion,
    TResult Function(String bucketId, Questions questions, Bucket? bucket,
            List<Questions>? stateQuestions)?
        setQuestion,
    TResult Function()? addVariant,
    TResult Function(String name, String category)? searchByName,
    TResult Function(
            String bucketId, Bucket? bucket, List<Questions>? stateQuestions)?
        removeFromRelease,
    TResult Function(String bucketId)? publish,
    TResult Function(String name, String category)? deleteQuestion,
    required TResult orElse(),
  }) {
    if (removeFromRelease != null) {
      return removeFromRelease(bucketId, bucket, stateQuestions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddQuestion value) addQuestion,
    required TResult Function(_SetQuestion value) setQuestion,
    required TResult Function(_AddVariant value) addVariant,
    required TResult Function(_SearchByName value) searchByName,
    required TResult Function(_RemoveFromRelease value) removeFromRelease,
    required TResult Function(_Publish value) publish,
    required TResult Function(_DeleteQuestion value) deleteQuestion,
  }) {
    return removeFromRelease(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddQuestion value)? addQuestion,
    TResult? Function(_SetQuestion value)? setQuestion,
    TResult? Function(_AddVariant value)? addVariant,
    TResult? Function(_SearchByName value)? searchByName,
    TResult? Function(_RemoveFromRelease value)? removeFromRelease,
    TResult? Function(_Publish value)? publish,
    TResult? Function(_DeleteQuestion value)? deleteQuestion,
  }) {
    return removeFromRelease?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddQuestion value)? addQuestion,
    TResult Function(_SetQuestion value)? setQuestion,
    TResult Function(_AddVariant value)? addVariant,
    TResult Function(_SearchByName value)? searchByName,
    TResult Function(_RemoveFromRelease value)? removeFromRelease,
    TResult Function(_Publish value)? publish,
    TResult Function(_DeleteQuestion value)? deleteQuestion,
    required TResult orElse(),
  }) {
    if (removeFromRelease != null) {
      return removeFromRelease(this);
    }
    return orElse();
  }
}

abstract class _RemoveFromRelease implements BucketEvent {
  const factory _RemoveFromRelease(
      {required final String bucketId,
      final Bucket? bucket,
      final List<Questions>? stateQuestions}) = _$_RemoveFromRelease;

  String get bucketId;
  Bucket? get bucket;
  List<Questions>? get stateQuestions;
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
    required TResult Function(Bucket? bucket) addQuestion,
    required TResult Function(String bucketId, Questions questions,
            Bucket? bucket, List<Questions>? stateQuestions)
        setQuestion,
    required TResult Function() addVariant,
    required TResult Function(String name, String category) searchByName,
    required TResult Function(
            String bucketId, Bucket? bucket, List<Questions>? stateQuestions)
        removeFromRelease,
    required TResult Function(String bucketId) publish,
    required TResult Function(String name, String category) deleteQuestion,
  }) {
    return publish(bucketId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? bucketId)? init,
    TResult? Function(Bucket? bucket)? addQuestion,
    TResult? Function(String bucketId, Questions questions, Bucket? bucket,
            List<Questions>? stateQuestions)?
        setQuestion,
    TResult? Function()? addVariant,
    TResult? Function(String name, String category)? searchByName,
    TResult? Function(
            String bucketId, Bucket? bucket, List<Questions>? stateQuestions)?
        removeFromRelease,
    TResult? Function(String bucketId)? publish,
    TResult? Function(String name, String category)? deleteQuestion,
  }) {
    return publish?.call(bucketId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? bucketId)? init,
    TResult Function(Bucket? bucket)? addQuestion,
    TResult Function(String bucketId, Questions questions, Bucket? bucket,
            List<Questions>? stateQuestions)?
        setQuestion,
    TResult Function()? addVariant,
    TResult Function(String name, String category)? searchByName,
    TResult Function(
            String bucketId, Bucket? bucket, List<Questions>? stateQuestions)?
        removeFromRelease,
    TResult Function(String bucketId)? publish,
    TResult Function(String name, String category)? deleteQuestion,
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
    required TResult Function(_AddVariant value) addVariant,
    required TResult Function(_SearchByName value) searchByName,
    required TResult Function(_RemoveFromRelease value) removeFromRelease,
    required TResult Function(_Publish value) publish,
    required TResult Function(_DeleteQuestion value) deleteQuestion,
  }) {
    return publish(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddQuestion value)? addQuestion,
    TResult? Function(_SetQuestion value)? setQuestion,
    TResult? Function(_AddVariant value)? addVariant,
    TResult? Function(_SearchByName value)? searchByName,
    TResult? Function(_RemoveFromRelease value)? removeFromRelease,
    TResult? Function(_Publish value)? publish,
    TResult? Function(_DeleteQuestion value)? deleteQuestion,
  }) {
    return publish?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddQuestion value)? addQuestion,
    TResult Function(_SetQuestion value)? setQuestion,
    TResult Function(_AddVariant value)? addVariant,
    TResult Function(_SearchByName value)? searchByName,
    TResult Function(_RemoveFromRelease value)? removeFromRelease,
    TResult Function(_Publish value)? publish,
    TResult Function(_DeleteQuestion value)? deleteQuestion,
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
  $Res call({String name, String category});
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
    Object? name = null,
    Object? category = null,
  }) {
    return _then(_$_DeleteQuestion(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DeleteQuestion implements _DeleteQuestion {
  const _$_DeleteQuestion({required this.name, required this.category});

  @override
  final String name;
  @override
  final String category;

  @override
  String toString() {
    return 'BucketEvent.deleteQuestion(name: $name, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteQuestion &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteQuestionCopyWith<_$_DeleteQuestion> get copyWith =>
      __$$_DeleteQuestionCopyWithImpl<_$_DeleteQuestion>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? bucketId) init,
    required TResult Function(Bucket? bucket) addQuestion,
    required TResult Function(String bucketId, Questions questions,
            Bucket? bucket, List<Questions>? stateQuestions)
        setQuestion,
    required TResult Function() addVariant,
    required TResult Function(String name, String category) searchByName,
    required TResult Function(
            String bucketId, Bucket? bucket, List<Questions>? stateQuestions)
        removeFromRelease,
    required TResult Function(String bucketId) publish,
    required TResult Function(String name, String category) deleteQuestion,
  }) {
    return deleteQuestion(name, category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? bucketId)? init,
    TResult? Function(Bucket? bucket)? addQuestion,
    TResult? Function(String bucketId, Questions questions, Bucket? bucket,
            List<Questions>? stateQuestions)?
        setQuestion,
    TResult? Function()? addVariant,
    TResult? Function(String name, String category)? searchByName,
    TResult? Function(
            String bucketId, Bucket? bucket, List<Questions>? stateQuestions)?
        removeFromRelease,
    TResult? Function(String bucketId)? publish,
    TResult? Function(String name, String category)? deleteQuestion,
  }) {
    return deleteQuestion?.call(name, category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? bucketId)? init,
    TResult Function(Bucket? bucket)? addQuestion,
    TResult Function(String bucketId, Questions questions, Bucket? bucket,
            List<Questions>? stateQuestions)?
        setQuestion,
    TResult Function()? addVariant,
    TResult Function(String name, String category)? searchByName,
    TResult Function(
            String bucketId, Bucket? bucket, List<Questions>? stateQuestions)?
        removeFromRelease,
    TResult Function(String bucketId)? publish,
    TResult Function(String name, String category)? deleteQuestion,
    required TResult orElse(),
  }) {
    if (deleteQuestion != null) {
      return deleteQuestion(name, category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddQuestion value) addQuestion,
    required TResult Function(_SetQuestion value) setQuestion,
    required TResult Function(_AddVariant value) addVariant,
    required TResult Function(_SearchByName value) searchByName,
    required TResult Function(_RemoveFromRelease value) removeFromRelease,
    required TResult Function(_Publish value) publish,
    required TResult Function(_DeleteQuestion value) deleteQuestion,
  }) {
    return deleteQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddQuestion value)? addQuestion,
    TResult? Function(_SetQuestion value)? setQuestion,
    TResult? Function(_AddVariant value)? addVariant,
    TResult? Function(_SearchByName value)? searchByName,
    TResult? Function(_RemoveFromRelease value)? removeFromRelease,
    TResult? Function(_Publish value)? publish,
    TResult? Function(_DeleteQuestion value)? deleteQuestion,
  }) {
    return deleteQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddQuestion value)? addQuestion,
    TResult Function(_SetQuestion value)? setQuestion,
    TResult Function(_AddVariant value)? addVariant,
    TResult Function(_SearchByName value)? searchByName,
    TResult Function(_RemoveFromRelease value)? removeFromRelease,
    TResult Function(_Publish value)? publish,
    TResult Function(_DeleteQuestion value)? deleteQuestion,
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
      {required final String name,
      required final String category}) = _$_DeleteQuestion;

  String get name;
  String get category;
  @JsonKey(ignore: true)
  _$$_DeleteQuestionCopyWith<_$_DeleteQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BucketState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Questions>? questions, Bucket? bucket, bool? isPublished)
        loaded,
    required TResult Function() success,
    required TResult Function() isPublished,
    required TResult Function(String error) error,
    required TResult Function() searchLoading,
    required TResult Function(String error) searchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Questions>? questions, Bucket? bucket, bool? isPublished)?
        loaded,
    TResult? Function()? success,
    TResult? Function()? isPublished,
    TResult? Function(String error)? error,
    TResult? Function()? searchLoading,
    TResult? Function(String error)? searchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<Questions>? questions, Bucket? bucket, bool? isPublished)?
        loaded,
    TResult Function()? success,
    TResult Function()? isPublished,
    TResult Function(String error)? error,
    TResult Function()? searchLoading,
    TResult Function(String error)? searchError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_IsPublished value) isPublished,
    required TResult Function(_Error value) error,
    required TResult Function(_SearchLoading value) searchLoading,
    required TResult Function(_SearchError value) searchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_IsPublished value)? isPublished,
    TResult? Function(_Error value)? error,
    TResult? Function(_SearchLoading value)? searchLoading,
    TResult? Function(_SearchError value)? searchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_IsPublished value)? isPublished,
    TResult Function(_Error value)? error,
    TResult Function(_SearchLoading value)? searchLoading,
    TResult Function(_SearchError value)? searchError,
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
            List<Questions>? questions, Bucket? bucket, bool? isPublished)
        loaded,
    required TResult Function() success,
    required TResult Function() isPublished,
    required TResult Function(String error) error,
    required TResult Function() searchLoading,
    required TResult Function(String error) searchError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Questions>? questions, Bucket? bucket, bool? isPublished)?
        loaded,
    TResult? Function()? success,
    TResult? Function()? isPublished,
    TResult? Function(String error)? error,
    TResult? Function()? searchLoading,
    TResult? Function(String error)? searchError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<Questions>? questions, Bucket? bucket, bool? isPublished)?
        loaded,
    TResult Function()? success,
    TResult Function()? isPublished,
    TResult Function(String error)? error,
    TResult Function()? searchLoading,
    TResult Function(String error)? searchError,
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
    required TResult Function(_Success value) success,
    required TResult Function(_IsPublished value) isPublished,
    required TResult Function(_Error value) error,
    required TResult Function(_SearchLoading value) searchLoading,
    required TResult Function(_SearchError value) searchError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_IsPublished value)? isPublished,
    TResult? Function(_Error value)? error,
    TResult? Function(_SearchLoading value)? searchLoading,
    TResult? Function(_SearchError value)? searchError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_IsPublished value)? isPublished,
    TResult Function(_Error value)? error,
    TResult Function(_SearchLoading value)? searchLoading,
    TResult Function(_SearchError value)? searchError,
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
            List<Questions>? questions, Bucket? bucket, bool? isPublished)
        loaded,
    required TResult Function() success,
    required TResult Function() isPublished,
    required TResult Function(String error) error,
    required TResult Function() searchLoading,
    required TResult Function(String error) searchError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Questions>? questions, Bucket? bucket, bool? isPublished)?
        loaded,
    TResult? Function()? success,
    TResult? Function()? isPublished,
    TResult? Function(String error)? error,
    TResult? Function()? searchLoading,
    TResult? Function(String error)? searchError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<Questions>? questions, Bucket? bucket, bool? isPublished)?
        loaded,
    TResult Function()? success,
    TResult Function()? isPublished,
    TResult Function(String error)? error,
    TResult Function()? searchLoading,
    TResult Function(String error)? searchError,
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
    required TResult Function(_Success value) success,
    required TResult Function(_IsPublished value) isPublished,
    required TResult Function(_Error value) error,
    required TResult Function(_SearchLoading value) searchLoading,
    required TResult Function(_SearchError value) searchError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_IsPublished value)? isPublished,
    TResult? Function(_Error value)? error,
    TResult? Function(_SearchLoading value)? searchLoading,
    TResult? Function(_SearchError value)? searchError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_IsPublished value)? isPublished,
    TResult Function(_Error value)? error,
    TResult Function(_SearchLoading value)? searchLoading,
    TResult Function(_SearchError value)? searchError,
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
  $Res call({List<Questions>? questions, Bucket? bucket, bool? isPublished});

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
    Object? questions = freezed,
    Object? bucket = freezed,
    Object? isPublished = freezed,
  }) {
    return _then(_$_Loaded(
      questions: freezed == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Questions>?,
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
      {final List<Questions>? questions, this.bucket, this.isPublished})
      : _questions = questions,
        super._();

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
  final Bucket? bucket;
  @override
  final bool? isPublished;

  @override
  String toString() {
    return 'BucketState.loaded(questions: $questions, bucket: $bucket, isPublished: $isPublished)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            (identical(other.bucket, bucket) || other.bucket == bucket) &&
            (identical(other.isPublished, isPublished) ||
                other.isPublished == isPublished));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_questions), bucket, isPublished);

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
            List<Questions>? questions, Bucket? bucket, bool? isPublished)
        loaded,
    required TResult Function() success,
    required TResult Function() isPublished,
    required TResult Function(String error) error,
    required TResult Function() searchLoading,
    required TResult Function(String error) searchError,
  }) {
    return loaded(questions, bucket, this.isPublished);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Questions>? questions, Bucket? bucket, bool? isPublished)?
        loaded,
    TResult? Function()? success,
    TResult? Function()? isPublished,
    TResult? Function(String error)? error,
    TResult? Function()? searchLoading,
    TResult? Function(String error)? searchError,
  }) {
    return loaded?.call(questions, bucket, this.isPublished);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<Questions>? questions, Bucket? bucket, bool? isPublished)?
        loaded,
    TResult Function()? success,
    TResult Function()? isPublished,
    TResult Function(String error)? error,
    TResult Function()? searchLoading,
    TResult Function(String error)? searchError,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(questions, bucket, this.isPublished);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_IsPublished value) isPublished,
    required TResult Function(_Error value) error,
    required TResult Function(_SearchLoading value) searchLoading,
    required TResult Function(_SearchError value) searchError,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_IsPublished value)? isPublished,
    TResult? Function(_Error value)? error,
    TResult? Function(_SearchLoading value)? searchLoading,
    TResult? Function(_SearchError value)? searchError,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_IsPublished value)? isPublished,
    TResult Function(_Error value)? error,
    TResult Function(_SearchLoading value)? searchLoading,
    TResult Function(_SearchError value)? searchError,
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
      {final List<Questions>? questions,
      final Bucket? bucket,
      final bool? isPublished}) = _$_Loaded;
  const _Loaded._() : super._();

  List<Questions>? get questions;
  Bucket? get bucket;
  bool? get isPublished;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
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
            List<Questions>? questions, Bucket? bucket, bool? isPublished)
        loaded,
    required TResult Function() success,
    required TResult Function() isPublished,
    required TResult Function(String error) error,
    required TResult Function() searchLoading,
    required TResult Function(String error) searchError,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Questions>? questions, Bucket? bucket, bool? isPublished)?
        loaded,
    TResult? Function()? success,
    TResult? Function()? isPublished,
    TResult? Function(String error)? error,
    TResult? Function()? searchLoading,
    TResult? Function(String error)? searchError,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<Questions>? questions, Bucket? bucket, bool? isPublished)?
        loaded,
    TResult Function()? success,
    TResult Function()? isPublished,
    TResult Function(String error)? error,
    TResult Function()? searchLoading,
    TResult Function(String error)? searchError,
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
    required TResult Function(_Success value) success,
    required TResult Function(_IsPublished value) isPublished,
    required TResult Function(_Error value) error,
    required TResult Function(_SearchLoading value) searchLoading,
    required TResult Function(_SearchError value) searchError,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_IsPublished value)? isPublished,
    TResult? Function(_Error value)? error,
    TResult? Function(_SearchLoading value)? searchLoading,
    TResult? Function(_SearchError value)? searchError,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_IsPublished value)? isPublished,
    TResult Function(_Error value)? error,
    TResult Function(_SearchLoading value)? searchLoading,
    TResult Function(_SearchError value)? searchError,
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
}

/// @nodoc
class __$$_IsPublishedCopyWithImpl<$Res>
    extends _$BucketStateCopyWithImpl<$Res, _$_IsPublished>
    implements _$$_IsPublishedCopyWith<$Res> {
  __$$_IsPublishedCopyWithImpl(
      _$_IsPublished _value, $Res Function(_$_IsPublished) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_IsPublished extends _IsPublished {
  const _$_IsPublished() : super._();

  @override
  String toString() {
    return 'BucketState.isPublished()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_IsPublished);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Questions>? questions, Bucket? bucket, bool? isPublished)
        loaded,
    required TResult Function() success,
    required TResult Function() isPublished,
    required TResult Function(String error) error,
    required TResult Function() searchLoading,
    required TResult Function(String error) searchError,
  }) {
    return isPublished();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Questions>? questions, Bucket? bucket, bool? isPublished)?
        loaded,
    TResult? Function()? success,
    TResult? Function()? isPublished,
    TResult? Function(String error)? error,
    TResult? Function()? searchLoading,
    TResult? Function(String error)? searchError,
  }) {
    return isPublished?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<Questions>? questions, Bucket? bucket, bool? isPublished)?
        loaded,
    TResult Function()? success,
    TResult Function()? isPublished,
    TResult Function(String error)? error,
    TResult Function()? searchLoading,
    TResult Function(String error)? searchError,
    required TResult orElse(),
  }) {
    if (isPublished != null) {
      return isPublished();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_IsPublished value) isPublished,
    required TResult Function(_Error value) error,
    required TResult Function(_SearchLoading value) searchLoading,
    required TResult Function(_SearchError value) searchError,
  }) {
    return isPublished(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_IsPublished value)? isPublished,
    TResult? Function(_Error value)? error,
    TResult? Function(_SearchLoading value)? searchLoading,
    TResult? Function(_SearchError value)? searchError,
  }) {
    return isPublished?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_IsPublished value)? isPublished,
    TResult Function(_Error value)? error,
    TResult Function(_SearchLoading value)? searchLoading,
    TResult Function(_SearchError value)? searchError,
    required TResult orElse(),
  }) {
    if (isPublished != null) {
      return isPublished(this);
    }
    return orElse();
  }
}

abstract class _IsPublished extends BucketState {
  const factory _IsPublished() = _$_IsPublished;
  const _IsPublished._() : super._();
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
            List<Questions>? questions, Bucket? bucket, bool? isPublished)
        loaded,
    required TResult Function() success,
    required TResult Function() isPublished,
    required TResult Function(String error) error,
    required TResult Function() searchLoading,
    required TResult Function(String error) searchError,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Questions>? questions, Bucket? bucket, bool? isPublished)?
        loaded,
    TResult? Function()? success,
    TResult? Function()? isPublished,
    TResult? Function(String error)? error,
    TResult? Function()? searchLoading,
    TResult? Function(String error)? searchError,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<Questions>? questions, Bucket? bucket, bool? isPublished)?
        loaded,
    TResult Function()? success,
    TResult Function()? isPublished,
    TResult Function(String error)? error,
    TResult Function()? searchLoading,
    TResult Function(String error)? searchError,
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
    required TResult Function(_Success value) success,
    required TResult Function(_IsPublished value) isPublished,
    required TResult Function(_Error value) error,
    required TResult Function(_SearchLoading value) searchLoading,
    required TResult Function(_SearchError value) searchError,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_IsPublished value)? isPublished,
    TResult? Function(_Error value)? error,
    TResult? Function(_SearchLoading value)? searchLoading,
    TResult? Function(_SearchError value)? searchError,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_IsPublished value)? isPublished,
    TResult Function(_Error value)? error,
    TResult Function(_SearchLoading value)? searchLoading,
    TResult Function(_SearchError value)? searchError,
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
            List<Questions>? questions, Bucket? bucket, bool? isPublished)
        loaded,
    required TResult Function() success,
    required TResult Function() isPublished,
    required TResult Function(String error) error,
    required TResult Function() searchLoading,
    required TResult Function(String error) searchError,
  }) {
    return searchLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Questions>? questions, Bucket? bucket, bool? isPublished)?
        loaded,
    TResult? Function()? success,
    TResult? Function()? isPublished,
    TResult? Function(String error)? error,
    TResult? Function()? searchLoading,
    TResult? Function(String error)? searchError,
  }) {
    return searchLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<Questions>? questions, Bucket? bucket, bool? isPublished)?
        loaded,
    TResult Function()? success,
    TResult Function()? isPublished,
    TResult Function(String error)? error,
    TResult Function()? searchLoading,
    TResult Function(String error)? searchError,
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
    required TResult Function(_Success value) success,
    required TResult Function(_IsPublished value) isPublished,
    required TResult Function(_Error value) error,
    required TResult Function(_SearchLoading value) searchLoading,
    required TResult Function(_SearchError value) searchError,
  }) {
    return searchLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_IsPublished value)? isPublished,
    TResult? Function(_Error value)? error,
    TResult? Function(_SearchLoading value)? searchLoading,
    TResult? Function(_SearchError value)? searchError,
  }) {
    return searchLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_IsPublished value)? isPublished,
    TResult Function(_Error value)? error,
    TResult Function(_SearchLoading value)? searchLoading,
    TResult Function(_SearchError value)? searchError,
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
            List<Questions>? questions, Bucket? bucket, bool? isPublished)
        loaded,
    required TResult Function() success,
    required TResult Function() isPublished,
    required TResult Function(String error) error,
    required TResult Function() searchLoading,
    required TResult Function(String error) searchError,
  }) {
    return searchError(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Questions>? questions, Bucket? bucket, bool? isPublished)?
        loaded,
    TResult? Function()? success,
    TResult? Function()? isPublished,
    TResult? Function(String error)? error,
    TResult? Function()? searchLoading,
    TResult? Function(String error)? searchError,
  }) {
    return searchError?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<Questions>? questions, Bucket? bucket, bool? isPublished)?
        loaded,
    TResult Function()? success,
    TResult Function()? isPublished,
    TResult Function(String error)? error,
    TResult Function()? searchLoading,
    TResult Function(String error)? searchError,
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
    required TResult Function(_Success value) success,
    required TResult Function(_IsPublished value) isPublished,
    required TResult Function(_Error value) error,
    required TResult Function(_SearchLoading value) searchLoading,
    required TResult Function(_SearchError value) searchError,
  }) {
    return searchError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_IsPublished value)? isPublished,
    TResult? Function(_Error value)? error,
    TResult? Function(_SearchLoading value)? searchLoading,
    TResult? Function(_SearchError value)? searchError,
  }) {
    return searchError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_IsPublished value)? isPublished,
    TResult Function(_Error value)? error,
    TResult Function(_SearchLoading value)? searchLoading,
    TResult Function(_SearchError value)? searchError,
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
