// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bucket.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Bucket _$BucketFromJson(Map<String, dynamic> json) {
  return _Bucket.fromJson(json);
}

/// @nodoc
mixin _$Bucket {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  bool? get published => throw _privateConstructorUsedError;
  List<Questions> get questions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BucketCopyWith<Bucket> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BucketCopyWith<$Res> {
  factory $BucketCopyWith(Bucket value, $Res Function(Bucket) then) =
      _$BucketCopyWithImpl<$Res, Bucket>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? description,
      String? category,
      bool? published,
      List<Questions> questions});
}

/// @nodoc
class _$BucketCopyWithImpl<$Res, $Val extends Bucket>
    implements $BucketCopyWith<$Res> {
  _$BucketCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? published = freezed,
    Object? questions = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      published: freezed == published
          ? _value.published
          : published // ignore: cast_nullable_to_non_nullable
              as bool?,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Questions>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BucketCopyWith<$Res> implements $BucketCopyWith<$Res> {
  factory _$$_BucketCopyWith(_$_Bucket value, $Res Function(_$_Bucket) then) =
      __$$_BucketCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? description,
      String? category,
      bool? published,
      List<Questions> questions});
}

/// @nodoc
class __$$_BucketCopyWithImpl<$Res>
    extends _$BucketCopyWithImpl<$Res, _$_Bucket>
    implements _$$_BucketCopyWith<$Res> {
  __$$_BucketCopyWithImpl(_$_Bucket _value, $Res Function(_$_Bucket) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? published = freezed,
    Object? questions = null,
  }) {
    return _then(_$_Bucket(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      published: freezed == published
          ? _value.published
          : published // ignore: cast_nullable_to_non_nullable
              as bool?,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Questions>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Bucket implements _Bucket {
  const _$_Bucket(
      {this.id,
      this.name,
      this.description,
      this.category,
      this.published = false,
      final List<Questions> questions = const []})
      : _questions = questions;

  factory _$_Bucket.fromJson(Map<String, dynamic> json) =>
      _$$_BucketFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? category;
  @override
  @JsonKey()
  final bool? published;
  final List<Questions> _questions;
  @override
  @JsonKey()
  List<Questions> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  String toString() {
    return 'Bucket(id: $id, name: $name, description: $description, category: $category, published: $published, questions: $questions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Bucket &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.published, published) ||
                other.published == published) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, category,
      published, const DeepCollectionEquality().hash(_questions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BucketCopyWith<_$_Bucket> get copyWith =>
      __$$_BucketCopyWithImpl<_$_Bucket>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BucketToJson(
      this,
    );
  }
}

abstract class _Bucket implements Bucket {
  const factory _Bucket(
      {final String? id,
      final String? name,
      final String? description,
      final String? category,
      final bool? published,
      final List<Questions> questions}) = _$_Bucket;

  factory _Bucket.fromJson(Map<String, dynamic> json) = _$_Bucket.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get category;
  @override
  bool? get published;
  @override
  List<Questions> get questions;
  @override
  @JsonKey(ignore: true)
  _$$_BucketCopyWith<_$_Bucket> get copyWith =>
      throw _privateConstructorUsedError;
}
