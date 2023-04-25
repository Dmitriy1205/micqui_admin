// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'questionnarie_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuestionnarieEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Bucket>? bucket) init,
    required TResult Function() addBucket,
    required TResult Function(Bucket bucket, String? bucketId) setBucket,
    required TResult Function(String bucketId, String category) updateCategory,
    required TResult Function(String name, String category) searchByName,
    required TResult Function(String category) sortByCategory,
    required TResult Function() reset,
    required TResult Function(String bucketId) deleteBucket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Bucket>? bucket)? init,
    TResult? Function()? addBucket,
    TResult? Function(Bucket bucket, String? bucketId)? setBucket,
    TResult? Function(String bucketId, String category)? updateCategory,
    TResult? Function(String name, String category)? searchByName,
    TResult? Function(String category)? sortByCategory,
    TResult? Function()? reset,
    TResult? Function(String bucketId)? deleteBucket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Bucket>? bucket)? init,
    TResult Function()? addBucket,
    TResult Function(Bucket bucket, String? bucketId)? setBucket,
    TResult Function(String bucketId, String category)? updateCategory,
    TResult Function(String name, String category)? searchByName,
    TResult Function(String category)? sortByCategory,
    TResult Function()? reset,
    TResult Function(String bucketId)? deleteBucket,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddBucket value) addBucket,
    required TResult Function(_SetBucket value) setBucket,
    required TResult Function(_UpdateCategory value) updateCategory,
    required TResult Function(_SearchByName value) searchByName,
    required TResult Function(_SortByCategory value) sortByCategory,
    required TResult Function(_Reset value) reset,
    required TResult Function(_DeleteBucket value) deleteBucket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddBucket value)? addBucket,
    TResult? Function(_SetBucket value)? setBucket,
    TResult? Function(_UpdateCategory value)? updateCategory,
    TResult? Function(_SearchByName value)? searchByName,
    TResult? Function(_SortByCategory value)? sortByCategory,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_DeleteBucket value)? deleteBucket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddBucket value)? addBucket,
    TResult Function(_SetBucket value)? setBucket,
    TResult Function(_UpdateCategory value)? updateCategory,
    TResult Function(_SearchByName value)? searchByName,
    TResult Function(_SortByCategory value)? sortByCategory,
    TResult Function(_Reset value)? reset,
    TResult Function(_DeleteBucket value)? deleteBucket,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnarieEventCopyWith<$Res> {
  factory $QuestionnarieEventCopyWith(
          QuestionnarieEvent value, $Res Function(QuestionnarieEvent) then) =
      _$QuestionnarieEventCopyWithImpl<$Res, QuestionnarieEvent>;
}

/// @nodoc
class _$QuestionnarieEventCopyWithImpl<$Res, $Val extends QuestionnarieEvent>
    implements $QuestionnarieEventCopyWith<$Res> {
  _$QuestionnarieEventCopyWithImpl(this._value, this._then);

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
  $Res call({List<Bucket>? bucket});
}

/// @nodoc
class __$$_InitCopyWithImpl<$Res>
    extends _$QuestionnarieEventCopyWithImpl<$Res, _$_Init>
    implements _$$_InitCopyWith<$Res> {
  __$$_InitCopyWithImpl(_$_Init _value, $Res Function(_$_Init) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bucket = freezed,
  }) {
    return _then(_$_Init(
      bucket: freezed == bucket
          ? _value._bucket
          : bucket // ignore: cast_nullable_to_non_nullable
              as List<Bucket>?,
    ));
  }
}

/// @nodoc

class _$_Init implements _Init {
  const _$_Init({final List<Bucket>? bucket}) : _bucket = bucket;

  final List<Bucket>? _bucket;
  @override
  List<Bucket>? get bucket {
    final value = _bucket;
    if (value == null) return null;
    if (_bucket is EqualUnmodifiableListView) return _bucket;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'QuestionnarieEvent.init(bucket: $bucket)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Init &&
            const DeepCollectionEquality().equals(other._bucket, _bucket));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_bucket));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitCopyWith<_$_Init> get copyWith =>
      __$$_InitCopyWithImpl<_$_Init>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Bucket>? bucket) init,
    required TResult Function() addBucket,
    required TResult Function(Bucket bucket, String? bucketId) setBucket,
    required TResult Function(String bucketId, String category) updateCategory,
    required TResult Function(String name, String category) searchByName,
    required TResult Function(String category) sortByCategory,
    required TResult Function() reset,
    required TResult Function(String bucketId) deleteBucket,
  }) {
    return init(bucket);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Bucket>? bucket)? init,
    TResult? Function()? addBucket,
    TResult? Function(Bucket bucket, String? bucketId)? setBucket,
    TResult? Function(String bucketId, String category)? updateCategory,
    TResult? Function(String name, String category)? searchByName,
    TResult? Function(String category)? sortByCategory,
    TResult? Function()? reset,
    TResult? Function(String bucketId)? deleteBucket,
  }) {
    return init?.call(bucket);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Bucket>? bucket)? init,
    TResult Function()? addBucket,
    TResult Function(Bucket bucket, String? bucketId)? setBucket,
    TResult Function(String bucketId, String category)? updateCategory,
    TResult Function(String name, String category)? searchByName,
    TResult Function(String category)? sortByCategory,
    TResult Function()? reset,
    TResult Function(String bucketId)? deleteBucket,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(bucket);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddBucket value) addBucket,
    required TResult Function(_SetBucket value) setBucket,
    required TResult Function(_UpdateCategory value) updateCategory,
    required TResult Function(_SearchByName value) searchByName,
    required TResult Function(_SortByCategory value) sortByCategory,
    required TResult Function(_Reset value) reset,
    required TResult Function(_DeleteBucket value) deleteBucket,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddBucket value)? addBucket,
    TResult? Function(_SetBucket value)? setBucket,
    TResult? Function(_UpdateCategory value)? updateCategory,
    TResult? Function(_SearchByName value)? searchByName,
    TResult? Function(_SortByCategory value)? sortByCategory,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_DeleteBucket value)? deleteBucket,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddBucket value)? addBucket,
    TResult Function(_SetBucket value)? setBucket,
    TResult Function(_UpdateCategory value)? updateCategory,
    TResult Function(_SearchByName value)? searchByName,
    TResult Function(_SortByCategory value)? sortByCategory,
    TResult Function(_Reset value)? reset,
    TResult Function(_DeleteBucket value)? deleteBucket,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements QuestionnarieEvent {
  const factory _Init({final List<Bucket>? bucket}) = _$_Init;

  List<Bucket>? get bucket;
  @JsonKey(ignore: true)
  _$$_InitCopyWith<_$_Init> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddBucketCopyWith<$Res> {
  factory _$$_AddBucketCopyWith(
          _$_AddBucket value, $Res Function(_$_AddBucket) then) =
      __$$_AddBucketCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AddBucketCopyWithImpl<$Res>
    extends _$QuestionnarieEventCopyWithImpl<$Res, _$_AddBucket>
    implements _$$_AddBucketCopyWith<$Res> {
  __$$_AddBucketCopyWithImpl(
      _$_AddBucket _value, $Res Function(_$_AddBucket) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AddBucket implements _AddBucket {
  const _$_AddBucket();

  @override
  String toString() {
    return 'QuestionnarieEvent.addBucket()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AddBucket);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Bucket>? bucket) init,
    required TResult Function() addBucket,
    required TResult Function(Bucket bucket, String? bucketId) setBucket,
    required TResult Function(String bucketId, String category) updateCategory,
    required TResult Function(String name, String category) searchByName,
    required TResult Function(String category) sortByCategory,
    required TResult Function() reset,
    required TResult Function(String bucketId) deleteBucket,
  }) {
    return addBucket();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Bucket>? bucket)? init,
    TResult? Function()? addBucket,
    TResult? Function(Bucket bucket, String? bucketId)? setBucket,
    TResult? Function(String bucketId, String category)? updateCategory,
    TResult? Function(String name, String category)? searchByName,
    TResult? Function(String category)? sortByCategory,
    TResult? Function()? reset,
    TResult? Function(String bucketId)? deleteBucket,
  }) {
    return addBucket?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Bucket>? bucket)? init,
    TResult Function()? addBucket,
    TResult Function(Bucket bucket, String? bucketId)? setBucket,
    TResult Function(String bucketId, String category)? updateCategory,
    TResult Function(String name, String category)? searchByName,
    TResult Function(String category)? sortByCategory,
    TResult Function()? reset,
    TResult Function(String bucketId)? deleteBucket,
    required TResult orElse(),
  }) {
    if (addBucket != null) {
      return addBucket();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddBucket value) addBucket,
    required TResult Function(_SetBucket value) setBucket,
    required TResult Function(_UpdateCategory value) updateCategory,
    required TResult Function(_SearchByName value) searchByName,
    required TResult Function(_SortByCategory value) sortByCategory,
    required TResult Function(_Reset value) reset,
    required TResult Function(_DeleteBucket value) deleteBucket,
  }) {
    return addBucket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddBucket value)? addBucket,
    TResult? Function(_SetBucket value)? setBucket,
    TResult? Function(_UpdateCategory value)? updateCategory,
    TResult? Function(_SearchByName value)? searchByName,
    TResult? Function(_SortByCategory value)? sortByCategory,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_DeleteBucket value)? deleteBucket,
  }) {
    return addBucket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddBucket value)? addBucket,
    TResult Function(_SetBucket value)? setBucket,
    TResult Function(_UpdateCategory value)? updateCategory,
    TResult Function(_SearchByName value)? searchByName,
    TResult Function(_SortByCategory value)? sortByCategory,
    TResult Function(_Reset value)? reset,
    TResult Function(_DeleteBucket value)? deleteBucket,
    required TResult orElse(),
  }) {
    if (addBucket != null) {
      return addBucket(this);
    }
    return orElse();
  }
}

abstract class _AddBucket implements QuestionnarieEvent {
  const factory _AddBucket() = _$_AddBucket;
}

/// @nodoc
abstract class _$$_SetBucketCopyWith<$Res> {
  factory _$$_SetBucketCopyWith(
          _$_SetBucket value, $Res Function(_$_SetBucket) then) =
      __$$_SetBucketCopyWithImpl<$Res>;
  @useResult
  $Res call({Bucket bucket, String? bucketId});

  $BucketCopyWith<$Res> get bucket;
}

/// @nodoc
class __$$_SetBucketCopyWithImpl<$Res>
    extends _$QuestionnarieEventCopyWithImpl<$Res, _$_SetBucket>
    implements _$$_SetBucketCopyWith<$Res> {
  __$$_SetBucketCopyWithImpl(
      _$_SetBucket _value, $Res Function(_$_SetBucket) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bucket = null,
    Object? bucketId = freezed,
  }) {
    return _then(_$_SetBucket(
      bucket: null == bucket
          ? _value.bucket
          : bucket // ignore: cast_nullable_to_non_nullable
              as Bucket,
      bucketId: freezed == bucketId
          ? _value.bucketId
          : bucketId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BucketCopyWith<$Res> get bucket {
    return $BucketCopyWith<$Res>(_value.bucket, (value) {
      return _then(_value.copyWith(bucket: value));
    });
  }
}

/// @nodoc

class _$_SetBucket implements _SetBucket {
  const _$_SetBucket({required this.bucket, required this.bucketId});

  @override
  final Bucket bucket;
  @override
  final String? bucketId;

  @override
  String toString() {
    return 'QuestionnarieEvent.setBucket(bucket: $bucket, bucketId: $bucketId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetBucket &&
            (identical(other.bucket, bucket) || other.bucket == bucket) &&
            (identical(other.bucketId, bucketId) ||
                other.bucketId == bucketId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bucket, bucketId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetBucketCopyWith<_$_SetBucket> get copyWith =>
      __$$_SetBucketCopyWithImpl<_$_SetBucket>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Bucket>? bucket) init,
    required TResult Function() addBucket,
    required TResult Function(Bucket bucket, String? bucketId) setBucket,
    required TResult Function(String bucketId, String category) updateCategory,
    required TResult Function(String name, String category) searchByName,
    required TResult Function(String category) sortByCategory,
    required TResult Function() reset,
    required TResult Function(String bucketId) deleteBucket,
  }) {
    return setBucket(bucket, bucketId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Bucket>? bucket)? init,
    TResult? Function()? addBucket,
    TResult? Function(Bucket bucket, String? bucketId)? setBucket,
    TResult? Function(String bucketId, String category)? updateCategory,
    TResult? Function(String name, String category)? searchByName,
    TResult? Function(String category)? sortByCategory,
    TResult? Function()? reset,
    TResult? Function(String bucketId)? deleteBucket,
  }) {
    return setBucket?.call(bucket, bucketId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Bucket>? bucket)? init,
    TResult Function()? addBucket,
    TResult Function(Bucket bucket, String? bucketId)? setBucket,
    TResult Function(String bucketId, String category)? updateCategory,
    TResult Function(String name, String category)? searchByName,
    TResult Function(String category)? sortByCategory,
    TResult Function()? reset,
    TResult Function(String bucketId)? deleteBucket,
    required TResult orElse(),
  }) {
    if (setBucket != null) {
      return setBucket(bucket, bucketId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddBucket value) addBucket,
    required TResult Function(_SetBucket value) setBucket,
    required TResult Function(_UpdateCategory value) updateCategory,
    required TResult Function(_SearchByName value) searchByName,
    required TResult Function(_SortByCategory value) sortByCategory,
    required TResult Function(_Reset value) reset,
    required TResult Function(_DeleteBucket value) deleteBucket,
  }) {
    return setBucket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddBucket value)? addBucket,
    TResult? Function(_SetBucket value)? setBucket,
    TResult? Function(_UpdateCategory value)? updateCategory,
    TResult? Function(_SearchByName value)? searchByName,
    TResult? Function(_SortByCategory value)? sortByCategory,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_DeleteBucket value)? deleteBucket,
  }) {
    return setBucket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddBucket value)? addBucket,
    TResult Function(_SetBucket value)? setBucket,
    TResult Function(_UpdateCategory value)? updateCategory,
    TResult Function(_SearchByName value)? searchByName,
    TResult Function(_SortByCategory value)? sortByCategory,
    TResult Function(_Reset value)? reset,
    TResult Function(_DeleteBucket value)? deleteBucket,
    required TResult orElse(),
  }) {
    if (setBucket != null) {
      return setBucket(this);
    }
    return orElse();
  }
}

abstract class _SetBucket implements QuestionnarieEvent {
  const factory _SetBucket(
      {required final Bucket bucket,
      required final String? bucketId}) = _$_SetBucket;

  Bucket get bucket;
  String? get bucketId;
  @JsonKey(ignore: true)
  _$$_SetBucketCopyWith<_$_SetBucket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateCategoryCopyWith<$Res> {
  factory _$$_UpdateCategoryCopyWith(
          _$_UpdateCategory value, $Res Function(_$_UpdateCategory) then) =
      __$$_UpdateCategoryCopyWithImpl<$Res>;
  @useResult
  $Res call({String bucketId, String category});
}

/// @nodoc
class __$$_UpdateCategoryCopyWithImpl<$Res>
    extends _$QuestionnarieEventCopyWithImpl<$Res, _$_UpdateCategory>
    implements _$$_UpdateCategoryCopyWith<$Res> {
  __$$_UpdateCategoryCopyWithImpl(
      _$_UpdateCategory _value, $Res Function(_$_UpdateCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bucketId = null,
    Object? category = null,
  }) {
    return _then(_$_UpdateCategory(
      bucketId: null == bucketId
          ? _value.bucketId
          : bucketId // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateCategory implements _UpdateCategory {
  const _$_UpdateCategory({required this.bucketId, required this.category});

  @override
  final String bucketId;
  @override
  final String category;

  @override
  String toString() {
    return 'QuestionnarieEvent.updateCategory(bucketId: $bucketId, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateCategory &&
            (identical(other.bucketId, bucketId) ||
                other.bucketId == bucketId) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bucketId, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateCategoryCopyWith<_$_UpdateCategory> get copyWith =>
      __$$_UpdateCategoryCopyWithImpl<_$_UpdateCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Bucket>? bucket) init,
    required TResult Function() addBucket,
    required TResult Function(Bucket bucket, String? bucketId) setBucket,
    required TResult Function(String bucketId, String category) updateCategory,
    required TResult Function(String name, String category) searchByName,
    required TResult Function(String category) sortByCategory,
    required TResult Function() reset,
    required TResult Function(String bucketId) deleteBucket,
  }) {
    return updateCategory(bucketId, category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Bucket>? bucket)? init,
    TResult? Function()? addBucket,
    TResult? Function(Bucket bucket, String? bucketId)? setBucket,
    TResult? Function(String bucketId, String category)? updateCategory,
    TResult? Function(String name, String category)? searchByName,
    TResult? Function(String category)? sortByCategory,
    TResult? Function()? reset,
    TResult? Function(String bucketId)? deleteBucket,
  }) {
    return updateCategory?.call(bucketId, category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Bucket>? bucket)? init,
    TResult Function()? addBucket,
    TResult Function(Bucket bucket, String? bucketId)? setBucket,
    TResult Function(String bucketId, String category)? updateCategory,
    TResult Function(String name, String category)? searchByName,
    TResult Function(String category)? sortByCategory,
    TResult Function()? reset,
    TResult Function(String bucketId)? deleteBucket,
    required TResult orElse(),
  }) {
    if (updateCategory != null) {
      return updateCategory(bucketId, category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddBucket value) addBucket,
    required TResult Function(_SetBucket value) setBucket,
    required TResult Function(_UpdateCategory value) updateCategory,
    required TResult Function(_SearchByName value) searchByName,
    required TResult Function(_SortByCategory value) sortByCategory,
    required TResult Function(_Reset value) reset,
    required TResult Function(_DeleteBucket value) deleteBucket,
  }) {
    return updateCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddBucket value)? addBucket,
    TResult? Function(_SetBucket value)? setBucket,
    TResult? Function(_UpdateCategory value)? updateCategory,
    TResult? Function(_SearchByName value)? searchByName,
    TResult? Function(_SortByCategory value)? sortByCategory,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_DeleteBucket value)? deleteBucket,
  }) {
    return updateCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddBucket value)? addBucket,
    TResult Function(_SetBucket value)? setBucket,
    TResult Function(_UpdateCategory value)? updateCategory,
    TResult Function(_SearchByName value)? searchByName,
    TResult Function(_SortByCategory value)? sortByCategory,
    TResult Function(_Reset value)? reset,
    TResult Function(_DeleteBucket value)? deleteBucket,
    required TResult orElse(),
  }) {
    if (updateCategory != null) {
      return updateCategory(this);
    }
    return orElse();
  }
}

abstract class _UpdateCategory implements QuestionnarieEvent {
  const factory _UpdateCategory(
      {required final String bucketId,
      required final String category}) = _$_UpdateCategory;

  String get bucketId;
  String get category;
  @JsonKey(ignore: true)
  _$$_UpdateCategoryCopyWith<_$_UpdateCategory> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$QuestionnarieEventCopyWithImpl<$Res, _$_SearchByName>
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
    return 'QuestionnarieEvent.searchByName(name: $name, category: $category)';
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
    required TResult Function(List<Bucket>? bucket) init,
    required TResult Function() addBucket,
    required TResult Function(Bucket bucket, String? bucketId) setBucket,
    required TResult Function(String bucketId, String category) updateCategory,
    required TResult Function(String name, String category) searchByName,
    required TResult Function(String category) sortByCategory,
    required TResult Function() reset,
    required TResult Function(String bucketId) deleteBucket,
  }) {
    return searchByName(name, category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Bucket>? bucket)? init,
    TResult? Function()? addBucket,
    TResult? Function(Bucket bucket, String? bucketId)? setBucket,
    TResult? Function(String bucketId, String category)? updateCategory,
    TResult? Function(String name, String category)? searchByName,
    TResult? Function(String category)? sortByCategory,
    TResult? Function()? reset,
    TResult? Function(String bucketId)? deleteBucket,
  }) {
    return searchByName?.call(name, category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Bucket>? bucket)? init,
    TResult Function()? addBucket,
    TResult Function(Bucket bucket, String? bucketId)? setBucket,
    TResult Function(String bucketId, String category)? updateCategory,
    TResult Function(String name, String category)? searchByName,
    TResult Function(String category)? sortByCategory,
    TResult Function()? reset,
    TResult Function(String bucketId)? deleteBucket,
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
    required TResult Function(_AddBucket value) addBucket,
    required TResult Function(_SetBucket value) setBucket,
    required TResult Function(_UpdateCategory value) updateCategory,
    required TResult Function(_SearchByName value) searchByName,
    required TResult Function(_SortByCategory value) sortByCategory,
    required TResult Function(_Reset value) reset,
    required TResult Function(_DeleteBucket value) deleteBucket,
  }) {
    return searchByName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddBucket value)? addBucket,
    TResult? Function(_SetBucket value)? setBucket,
    TResult? Function(_UpdateCategory value)? updateCategory,
    TResult? Function(_SearchByName value)? searchByName,
    TResult? Function(_SortByCategory value)? sortByCategory,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_DeleteBucket value)? deleteBucket,
  }) {
    return searchByName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddBucket value)? addBucket,
    TResult Function(_SetBucket value)? setBucket,
    TResult Function(_UpdateCategory value)? updateCategory,
    TResult Function(_SearchByName value)? searchByName,
    TResult Function(_SortByCategory value)? sortByCategory,
    TResult Function(_Reset value)? reset,
    TResult Function(_DeleteBucket value)? deleteBucket,
    required TResult orElse(),
  }) {
    if (searchByName != null) {
      return searchByName(this);
    }
    return orElse();
  }
}

abstract class _SearchByName implements QuestionnarieEvent {
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
abstract class _$$_SortByCategoryCopyWith<$Res> {
  factory _$$_SortByCategoryCopyWith(
          _$_SortByCategory value, $Res Function(_$_SortByCategory) then) =
      __$$_SortByCategoryCopyWithImpl<$Res>;
  @useResult
  $Res call({String category});
}

/// @nodoc
class __$$_SortByCategoryCopyWithImpl<$Res>
    extends _$QuestionnarieEventCopyWithImpl<$Res, _$_SortByCategory>
    implements _$$_SortByCategoryCopyWith<$Res> {
  __$$_SortByCategoryCopyWithImpl(
      _$_SortByCategory _value, $Res Function(_$_SortByCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$_SortByCategory(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SortByCategory implements _SortByCategory {
  const _$_SortByCategory({required this.category});

  @override
  final String category;

  @override
  String toString() {
    return 'QuestionnarieEvent.sortByCategory(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SortByCategory &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SortByCategoryCopyWith<_$_SortByCategory> get copyWith =>
      __$$_SortByCategoryCopyWithImpl<_$_SortByCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Bucket>? bucket) init,
    required TResult Function() addBucket,
    required TResult Function(Bucket bucket, String? bucketId) setBucket,
    required TResult Function(String bucketId, String category) updateCategory,
    required TResult Function(String name, String category) searchByName,
    required TResult Function(String category) sortByCategory,
    required TResult Function() reset,
    required TResult Function(String bucketId) deleteBucket,
  }) {
    return sortByCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Bucket>? bucket)? init,
    TResult? Function()? addBucket,
    TResult? Function(Bucket bucket, String? bucketId)? setBucket,
    TResult? Function(String bucketId, String category)? updateCategory,
    TResult? Function(String name, String category)? searchByName,
    TResult? Function(String category)? sortByCategory,
    TResult? Function()? reset,
    TResult? Function(String bucketId)? deleteBucket,
  }) {
    return sortByCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Bucket>? bucket)? init,
    TResult Function()? addBucket,
    TResult Function(Bucket bucket, String? bucketId)? setBucket,
    TResult Function(String bucketId, String category)? updateCategory,
    TResult Function(String name, String category)? searchByName,
    TResult Function(String category)? sortByCategory,
    TResult Function()? reset,
    TResult Function(String bucketId)? deleteBucket,
    required TResult orElse(),
  }) {
    if (sortByCategory != null) {
      return sortByCategory(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddBucket value) addBucket,
    required TResult Function(_SetBucket value) setBucket,
    required TResult Function(_UpdateCategory value) updateCategory,
    required TResult Function(_SearchByName value) searchByName,
    required TResult Function(_SortByCategory value) sortByCategory,
    required TResult Function(_Reset value) reset,
    required TResult Function(_DeleteBucket value) deleteBucket,
  }) {
    return sortByCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddBucket value)? addBucket,
    TResult? Function(_SetBucket value)? setBucket,
    TResult? Function(_UpdateCategory value)? updateCategory,
    TResult? Function(_SearchByName value)? searchByName,
    TResult? Function(_SortByCategory value)? sortByCategory,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_DeleteBucket value)? deleteBucket,
  }) {
    return sortByCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddBucket value)? addBucket,
    TResult Function(_SetBucket value)? setBucket,
    TResult Function(_UpdateCategory value)? updateCategory,
    TResult Function(_SearchByName value)? searchByName,
    TResult Function(_SortByCategory value)? sortByCategory,
    TResult Function(_Reset value)? reset,
    TResult Function(_DeleteBucket value)? deleteBucket,
    required TResult orElse(),
  }) {
    if (sortByCategory != null) {
      return sortByCategory(this);
    }
    return orElse();
  }
}

abstract class _SortByCategory implements QuestionnarieEvent {
  const factory _SortByCategory({required final String category}) =
      _$_SortByCategory;

  String get category;
  @JsonKey(ignore: true)
  _$$_SortByCategoryCopyWith<_$_SortByCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResetCopyWith<$Res> {
  factory _$$_ResetCopyWith(_$_Reset value, $Res Function(_$_Reset) then) =
      __$$_ResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResetCopyWithImpl<$Res>
    extends _$QuestionnarieEventCopyWithImpl<$Res, _$_Reset>
    implements _$$_ResetCopyWith<$Res> {
  __$$_ResetCopyWithImpl(_$_Reset _value, $Res Function(_$_Reset) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Reset implements _Reset {
  const _$_Reset();

  @override
  String toString() {
    return 'QuestionnarieEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Reset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Bucket>? bucket) init,
    required TResult Function() addBucket,
    required TResult Function(Bucket bucket, String? bucketId) setBucket,
    required TResult Function(String bucketId, String category) updateCategory,
    required TResult Function(String name, String category) searchByName,
    required TResult Function(String category) sortByCategory,
    required TResult Function() reset,
    required TResult Function(String bucketId) deleteBucket,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Bucket>? bucket)? init,
    TResult? Function()? addBucket,
    TResult? Function(Bucket bucket, String? bucketId)? setBucket,
    TResult? Function(String bucketId, String category)? updateCategory,
    TResult? Function(String name, String category)? searchByName,
    TResult? Function(String category)? sortByCategory,
    TResult? Function()? reset,
    TResult? Function(String bucketId)? deleteBucket,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Bucket>? bucket)? init,
    TResult Function()? addBucket,
    TResult Function(Bucket bucket, String? bucketId)? setBucket,
    TResult Function(String bucketId, String category)? updateCategory,
    TResult Function(String name, String category)? searchByName,
    TResult Function(String category)? sortByCategory,
    TResult Function()? reset,
    TResult Function(String bucketId)? deleteBucket,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddBucket value) addBucket,
    required TResult Function(_SetBucket value) setBucket,
    required TResult Function(_UpdateCategory value) updateCategory,
    required TResult Function(_SearchByName value) searchByName,
    required TResult Function(_SortByCategory value) sortByCategory,
    required TResult Function(_Reset value) reset,
    required TResult Function(_DeleteBucket value) deleteBucket,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddBucket value)? addBucket,
    TResult? Function(_SetBucket value)? setBucket,
    TResult? Function(_UpdateCategory value)? updateCategory,
    TResult? Function(_SearchByName value)? searchByName,
    TResult? Function(_SortByCategory value)? sortByCategory,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_DeleteBucket value)? deleteBucket,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddBucket value)? addBucket,
    TResult Function(_SetBucket value)? setBucket,
    TResult Function(_UpdateCategory value)? updateCategory,
    TResult Function(_SearchByName value)? searchByName,
    TResult Function(_SortByCategory value)? sortByCategory,
    TResult Function(_Reset value)? reset,
    TResult Function(_DeleteBucket value)? deleteBucket,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements QuestionnarieEvent {
  const factory _Reset() = _$_Reset;
}

/// @nodoc
abstract class _$$_DeleteBucketCopyWith<$Res> {
  factory _$$_DeleteBucketCopyWith(
          _$_DeleteBucket value, $Res Function(_$_DeleteBucket) then) =
      __$$_DeleteBucketCopyWithImpl<$Res>;
  @useResult
  $Res call({String bucketId});
}

/// @nodoc
class __$$_DeleteBucketCopyWithImpl<$Res>
    extends _$QuestionnarieEventCopyWithImpl<$Res, _$_DeleteBucket>
    implements _$$_DeleteBucketCopyWith<$Res> {
  __$$_DeleteBucketCopyWithImpl(
      _$_DeleteBucket _value, $Res Function(_$_DeleteBucket) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bucketId = null,
  }) {
    return _then(_$_DeleteBucket(
      bucketId: null == bucketId
          ? _value.bucketId
          : bucketId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DeleteBucket implements _DeleteBucket {
  const _$_DeleteBucket({required this.bucketId});

  @override
  final String bucketId;

  @override
  String toString() {
    return 'QuestionnarieEvent.deleteBucket(bucketId: $bucketId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteBucket &&
            (identical(other.bucketId, bucketId) ||
                other.bucketId == bucketId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bucketId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteBucketCopyWith<_$_DeleteBucket> get copyWith =>
      __$$_DeleteBucketCopyWithImpl<_$_DeleteBucket>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Bucket>? bucket) init,
    required TResult Function() addBucket,
    required TResult Function(Bucket bucket, String? bucketId) setBucket,
    required TResult Function(String bucketId, String category) updateCategory,
    required TResult Function(String name, String category) searchByName,
    required TResult Function(String category) sortByCategory,
    required TResult Function() reset,
    required TResult Function(String bucketId) deleteBucket,
  }) {
    return deleteBucket(bucketId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Bucket>? bucket)? init,
    TResult? Function()? addBucket,
    TResult? Function(Bucket bucket, String? bucketId)? setBucket,
    TResult? Function(String bucketId, String category)? updateCategory,
    TResult? Function(String name, String category)? searchByName,
    TResult? Function(String category)? sortByCategory,
    TResult? Function()? reset,
    TResult? Function(String bucketId)? deleteBucket,
  }) {
    return deleteBucket?.call(bucketId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Bucket>? bucket)? init,
    TResult Function()? addBucket,
    TResult Function(Bucket bucket, String? bucketId)? setBucket,
    TResult Function(String bucketId, String category)? updateCategory,
    TResult Function(String name, String category)? searchByName,
    TResult Function(String category)? sortByCategory,
    TResult Function()? reset,
    TResult Function(String bucketId)? deleteBucket,
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
    required TResult Function(_AddBucket value) addBucket,
    required TResult Function(_SetBucket value) setBucket,
    required TResult Function(_UpdateCategory value) updateCategory,
    required TResult Function(_SearchByName value) searchByName,
    required TResult Function(_SortByCategory value) sortByCategory,
    required TResult Function(_Reset value) reset,
    required TResult Function(_DeleteBucket value) deleteBucket,
  }) {
    return deleteBucket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddBucket value)? addBucket,
    TResult? Function(_SetBucket value)? setBucket,
    TResult? Function(_UpdateCategory value)? updateCategory,
    TResult? Function(_SearchByName value)? searchByName,
    TResult? Function(_SortByCategory value)? sortByCategory,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_DeleteBucket value)? deleteBucket,
  }) {
    return deleteBucket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddBucket value)? addBucket,
    TResult Function(_SetBucket value)? setBucket,
    TResult Function(_UpdateCategory value)? updateCategory,
    TResult Function(_SearchByName value)? searchByName,
    TResult Function(_SortByCategory value)? sortByCategory,
    TResult Function(_Reset value)? reset,
    TResult Function(_DeleteBucket value)? deleteBucket,
    required TResult orElse(),
  }) {
    if (deleteBucket != null) {
      return deleteBucket(this);
    }
    return orElse();
  }
}

abstract class _DeleteBucket implements QuestionnarieEvent {
  const factory _DeleteBucket({required final String bucketId}) =
      _$_DeleteBucket;

  String get bucketId;
  @JsonKey(ignore: true)
  _$$_DeleteBucketCopyWith<_$_DeleteBucket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuestionnarieState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Bucket>? bucket) loaded,
    required TResult Function() success,
    required TResult Function(String error) error,
    required TResult Function() searchLoading,
    required TResult Function(String error) searchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Bucket>? bucket)? loaded,
    TResult? Function()? success,
    TResult? Function(String error)? error,
    TResult? Function()? searchLoading,
    TResult? Function(String error)? searchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Bucket>? bucket)? loaded,
    TResult Function()? success,
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
    TResult Function(_Error value)? error,
    TResult Function(_SearchLoading value)? searchLoading,
    TResult Function(_SearchError value)? searchError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnarieStateCopyWith<$Res> {
  factory $QuestionnarieStateCopyWith(
          QuestionnarieState value, $Res Function(QuestionnarieState) then) =
      _$QuestionnarieStateCopyWithImpl<$Res, QuestionnarieState>;
}

/// @nodoc
class _$QuestionnarieStateCopyWithImpl<$Res, $Val extends QuestionnarieState>
    implements $QuestionnarieStateCopyWith<$Res> {
  _$QuestionnarieStateCopyWithImpl(this._value, this._then);

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
    extends _$QuestionnarieStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial() : super._();

  @override
  String toString() {
    return 'QuestionnarieState.initial()';
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
    required TResult Function(List<Bucket>? bucket) loaded,
    required TResult Function() success,
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
    TResult? Function(List<Bucket>? bucket)? loaded,
    TResult? Function()? success,
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
    TResult Function(List<Bucket>? bucket)? loaded,
    TResult Function()? success,
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

abstract class _Initial extends QuestionnarieState {
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
    extends _$QuestionnarieStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading() : super._();

  @override
  String toString() {
    return 'QuestionnarieState.loading()';
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
    required TResult Function(List<Bucket>? bucket) loaded,
    required TResult Function() success,
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
    TResult? Function(List<Bucket>? bucket)? loaded,
    TResult? Function()? success,
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
    TResult Function(List<Bucket>? bucket)? loaded,
    TResult Function()? success,
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

abstract class _Loading extends QuestionnarieState {
  const factory _Loading() = _$_Loading;
  const _Loading._() : super._();
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Bucket>? bucket});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$QuestionnarieStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bucket = freezed,
  }) {
    return _then(_$_Loaded(
      bucket: freezed == bucket
          ? _value._bucket
          : bucket // ignore: cast_nullable_to_non_nullable
              as List<Bucket>?,
    ));
  }
}

/// @nodoc

class _$_Loaded extends _Loaded {
  const _$_Loaded({final List<Bucket>? bucket})
      : _bucket = bucket,
        super._();

  final List<Bucket>? _bucket;
  @override
  List<Bucket>? get bucket {
    final value = _bucket;
    if (value == null) return null;
    if (_bucket is EqualUnmodifiableListView) return _bucket;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'QuestionnarieState.loaded(bucket: $bucket)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality().equals(other._bucket, _bucket));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_bucket));

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
    required TResult Function(List<Bucket>? bucket) loaded,
    required TResult Function() success,
    required TResult Function(String error) error,
    required TResult Function() searchLoading,
    required TResult Function(String error) searchError,
  }) {
    return loaded(bucket);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Bucket>? bucket)? loaded,
    TResult? Function()? success,
    TResult? Function(String error)? error,
    TResult? Function()? searchLoading,
    TResult? Function(String error)? searchError,
  }) {
    return loaded?.call(bucket);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Bucket>? bucket)? loaded,
    TResult Function()? success,
    TResult Function(String error)? error,
    TResult Function()? searchLoading,
    TResult Function(String error)? searchError,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(bucket);
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

abstract class _Loaded extends QuestionnarieState {
  const factory _Loaded({final List<Bucket>? bucket}) = _$_Loaded;
  const _Loaded._() : super._();

  List<Bucket>? get bucket;
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
    extends _$QuestionnarieStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Success extends _Success {
  const _$_Success() : super._();

  @override
  String toString() {
    return 'QuestionnarieState.success()';
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
    required TResult Function(List<Bucket>? bucket) loaded,
    required TResult Function() success,
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
    TResult? Function(List<Bucket>? bucket)? loaded,
    TResult? Function()? success,
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
    TResult Function(List<Bucket>? bucket)? loaded,
    TResult Function()? success,
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

abstract class _Success extends QuestionnarieState {
  const factory _Success() = _$_Success;
  const _Success._() : super._();
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
    extends _$QuestionnarieStateCopyWithImpl<$Res, _$_Error>
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
    return 'QuestionnarieState.error(error: $error)';
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
    required TResult Function(List<Bucket>? bucket) loaded,
    required TResult Function() success,
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
    TResult? Function(List<Bucket>? bucket)? loaded,
    TResult? Function()? success,
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
    TResult Function(List<Bucket>? bucket)? loaded,
    TResult Function()? success,
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

abstract class _Error extends QuestionnarieState {
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
    extends _$QuestionnarieStateCopyWithImpl<$Res, _$_SearchLoading>
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
    return 'QuestionnarieState.searchLoading()';
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
    required TResult Function(List<Bucket>? bucket) loaded,
    required TResult Function() success,
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
    TResult? Function(List<Bucket>? bucket)? loaded,
    TResult? Function()? success,
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
    TResult Function(List<Bucket>? bucket)? loaded,
    TResult Function()? success,
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

abstract class _SearchLoading extends QuestionnarieState {
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
    extends _$QuestionnarieStateCopyWithImpl<$Res, _$_SearchError>
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
    return 'QuestionnarieState.searchError(error: $error)';
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
    required TResult Function(List<Bucket>? bucket) loaded,
    required TResult Function() success,
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
    TResult? Function(List<Bucket>? bucket)? loaded,
    TResult? Function()? success,
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
    TResult Function(List<Bucket>? bucket)? loaded,
    TResult Function()? success,
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

abstract class _SearchError extends QuestionnarieState {
  const factory _SearchError({required final String error}) = _$_SearchError;
  const _SearchError._() : super._();

  String get error;
  @JsonKey(ignore: true)
  _$$_SearchErrorCopyWith<_$_SearchError> get copyWith =>
      throw _privateConstructorUsedError;
}
