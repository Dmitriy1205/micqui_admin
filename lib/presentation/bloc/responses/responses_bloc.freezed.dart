// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'responses_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ResponsesEvent {
  String? get bucketId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? bucketId) init,
    required TResult Function(String name, String? bucketId) searchByName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? bucketId)? init,
    TResult? Function(String name, String? bucketId)? searchByName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? bucketId)? init,
    TResult Function(String name, String? bucketId)? searchByName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_SearchByName value) searchByName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_SearchByName value)? searchByName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SearchByName value)? searchByName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResponsesEventCopyWith<ResponsesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponsesEventCopyWith<$Res> {
  factory $ResponsesEventCopyWith(
          ResponsesEvent value, $Res Function(ResponsesEvent) then) =
      _$ResponsesEventCopyWithImpl<$Res, ResponsesEvent>;
  @useResult
  $Res call({String? bucketId});
}

/// @nodoc
class _$ResponsesEventCopyWithImpl<$Res, $Val extends ResponsesEvent>
    implements $ResponsesEventCopyWith<$Res> {
  _$ResponsesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bucketId = freezed,
  }) {
    return _then(_value.copyWith(
      bucketId: freezed == bucketId
          ? _value.bucketId
          : bucketId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitCopyWith<$Res> implements $ResponsesEventCopyWith<$Res> {
  factory _$$_InitCopyWith(_$_Init value, $Res Function(_$_Init) then) =
      __$$_InitCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? bucketId});
}

/// @nodoc
class __$$_InitCopyWithImpl<$Res>
    extends _$ResponsesEventCopyWithImpl<$Res, _$_Init>
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
    return 'ResponsesEvent.init(bucketId: $bucketId)';
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
    required TResult Function(String name, String? bucketId) searchByName,
  }) {
    return init(bucketId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? bucketId)? init,
    TResult? Function(String name, String? bucketId)? searchByName,
  }) {
    return init?.call(bucketId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? bucketId)? init,
    TResult Function(String name, String? bucketId)? searchByName,
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
    required TResult Function(_SearchByName value) searchByName,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_SearchByName value)? searchByName,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SearchByName value)? searchByName,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements ResponsesEvent {
  const factory _Init({required final String? bucketId}) = _$_Init;

  @override
  String? get bucketId;
  @override
  @JsonKey(ignore: true)
  _$$_InitCopyWith<_$_Init> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchByNameCopyWith<$Res>
    implements $ResponsesEventCopyWith<$Res> {
  factory _$$_SearchByNameCopyWith(
          _$_SearchByName value, $Res Function(_$_SearchByName) then) =
      __$$_SearchByNameCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String? bucketId});
}

/// @nodoc
class __$$_SearchByNameCopyWithImpl<$Res>
    extends _$ResponsesEventCopyWithImpl<$Res, _$_SearchByName>
    implements _$$_SearchByNameCopyWith<$Res> {
  __$$_SearchByNameCopyWithImpl(
      _$_SearchByName _value, $Res Function(_$_SearchByName) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? bucketId = freezed,
  }) {
    return _then(_$_SearchByName(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      bucketId: freezed == bucketId
          ? _value.bucketId
          : bucketId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SearchByName implements _SearchByName {
  const _$_SearchByName({required this.name, required this.bucketId});

  @override
  final String name;
  @override
  final String? bucketId;

  @override
  String toString() {
    return 'ResponsesEvent.searchByName(name: $name, bucketId: $bucketId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchByName &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.bucketId, bucketId) ||
                other.bucketId == bucketId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, bucketId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchByNameCopyWith<_$_SearchByName> get copyWith =>
      __$$_SearchByNameCopyWithImpl<_$_SearchByName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? bucketId) init,
    required TResult Function(String name, String? bucketId) searchByName,
  }) {
    return searchByName(name, bucketId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? bucketId)? init,
    TResult? Function(String name, String? bucketId)? searchByName,
  }) {
    return searchByName?.call(name, bucketId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? bucketId)? init,
    TResult Function(String name, String? bucketId)? searchByName,
    required TResult orElse(),
  }) {
    if (searchByName != null) {
      return searchByName(name, bucketId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_SearchByName value) searchByName,
  }) {
    return searchByName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_SearchByName value)? searchByName,
  }) {
    return searchByName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SearchByName value)? searchByName,
    required TResult orElse(),
  }) {
    if (searchByName != null) {
      return searchByName(this);
    }
    return orElse();
  }
}

abstract class _SearchByName implements ResponsesEvent {
  const factory _SearchByName(
      {required final String name,
      required final String? bucketId}) = _$_SearchByName;

  String get name;
  @override
  String? get bucketId;
  @override
  @JsonKey(ignore: true)
  _$$_SearchByNameCopyWith<_$_SearchByName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ResponsesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Questions>? questions) loaded,
    required TResult Function() searchLoading,
    required TResult Function(String error) searchError,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Questions>? questions)? loaded,
    TResult? Function()? searchLoading,
    TResult? Function(String error)? searchError,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Questions>? questions)? loaded,
    TResult Function()? searchLoading,
    TResult Function(String error)? searchError,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_SearchLoading value) searchLoading,
    required TResult Function(_SearchError value) searchError,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_SearchLoading value)? searchLoading,
    TResult? Function(_SearchError value)? searchError,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_SearchLoading value)? searchLoading,
    TResult Function(_SearchError value)? searchError,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponsesStateCopyWith<$Res> {
  factory $ResponsesStateCopyWith(
          ResponsesState value, $Res Function(ResponsesState) then) =
      _$ResponsesStateCopyWithImpl<$Res, ResponsesState>;
}

/// @nodoc
class _$ResponsesStateCopyWithImpl<$Res, $Val extends ResponsesState>
    implements $ResponsesStateCopyWith<$Res> {
  _$ResponsesStateCopyWithImpl(this._value, this._then);

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
    extends _$ResponsesStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial() : super._();

  @override
  String toString() {
    return 'ResponsesState.initial()';
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
    required TResult Function(List<Questions>? questions) loaded,
    required TResult Function() searchLoading,
    required TResult Function(String error) searchError,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Questions>? questions)? loaded,
    TResult? Function()? searchLoading,
    TResult? Function(String error)? searchError,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Questions>? questions)? loaded,
    TResult Function()? searchLoading,
    TResult Function(String error)? searchError,
    TResult Function(String error)? error,
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
    required TResult Function(_SearchLoading value) searchLoading,
    required TResult Function(_SearchError value) searchError,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_SearchLoading value)? searchLoading,
    TResult? Function(_SearchError value)? searchError,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_SearchLoading value)? searchLoading,
    TResult Function(_SearchError value)? searchError,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends ResponsesState {
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
    extends _$ResponsesStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading() : super._();

  @override
  String toString() {
    return 'ResponsesState.loading()';
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
    required TResult Function(List<Questions>? questions) loaded,
    required TResult Function() searchLoading,
    required TResult Function(String error) searchError,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Questions>? questions)? loaded,
    TResult? Function()? searchLoading,
    TResult? Function(String error)? searchError,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Questions>? questions)? loaded,
    TResult Function()? searchLoading,
    TResult Function(String error)? searchError,
    TResult Function(String error)? error,
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
    required TResult Function(_SearchLoading value) searchLoading,
    required TResult Function(_SearchError value) searchError,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_SearchLoading value)? searchLoading,
    TResult? Function(_SearchError value)? searchError,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_SearchLoading value)? searchLoading,
    TResult Function(_SearchError value)? searchError,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends ResponsesState {
  const factory _Loading() = _$_Loading;
  const _Loading._() : super._();
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Questions>? questions});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$ResponsesStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questions = freezed,
  }) {
    return _then(_$_Loaded(
      questions: freezed == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Questions>?,
    ));
  }
}

/// @nodoc

class _$_Loaded extends _Loaded {
  const _$_Loaded({final List<Questions>? questions})
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
  String toString() {
    return 'ResponsesState.loaded(questions: $questions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_questions));

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
    required TResult Function(List<Questions>? questions) loaded,
    required TResult Function() searchLoading,
    required TResult Function(String error) searchError,
    required TResult Function(String error) error,
  }) {
    return loaded(questions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Questions>? questions)? loaded,
    TResult? Function()? searchLoading,
    TResult? Function(String error)? searchError,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(questions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Questions>? questions)? loaded,
    TResult Function()? searchLoading,
    TResult Function(String error)? searchError,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(questions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_SearchLoading value) searchLoading,
    required TResult Function(_SearchError value) searchError,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_SearchLoading value)? searchLoading,
    TResult? Function(_SearchError value)? searchError,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_SearchLoading value)? searchLoading,
    TResult Function(_SearchError value)? searchError,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded extends ResponsesState {
  const factory _Loaded({final List<Questions>? questions}) = _$_Loaded;
  const _Loaded._() : super._();

  List<Questions>? get questions;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
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
    extends _$ResponsesStateCopyWithImpl<$Res, _$_SearchLoading>
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
    return 'ResponsesState.searchLoading()';
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
    required TResult Function(List<Questions>? questions) loaded,
    required TResult Function() searchLoading,
    required TResult Function(String error) searchError,
    required TResult Function(String error) error,
  }) {
    return searchLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Questions>? questions)? loaded,
    TResult? Function()? searchLoading,
    TResult? Function(String error)? searchError,
    TResult? Function(String error)? error,
  }) {
    return searchLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Questions>? questions)? loaded,
    TResult Function()? searchLoading,
    TResult Function(String error)? searchError,
    TResult Function(String error)? error,
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
    required TResult Function(_SearchLoading value) searchLoading,
    required TResult Function(_SearchError value) searchError,
    required TResult Function(_Error value) error,
  }) {
    return searchLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_SearchLoading value)? searchLoading,
    TResult? Function(_SearchError value)? searchError,
    TResult? Function(_Error value)? error,
  }) {
    return searchLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_SearchLoading value)? searchLoading,
    TResult Function(_SearchError value)? searchError,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (searchLoading != null) {
      return searchLoading(this);
    }
    return orElse();
  }
}

abstract class _SearchLoading extends ResponsesState {
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
    extends _$ResponsesStateCopyWithImpl<$Res, _$_SearchError>
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
    return 'ResponsesState.searchError(error: $error)';
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
    required TResult Function(List<Questions>? questions) loaded,
    required TResult Function() searchLoading,
    required TResult Function(String error) searchError,
    required TResult Function(String error) error,
  }) {
    return searchError(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Questions>? questions)? loaded,
    TResult? Function()? searchLoading,
    TResult? Function(String error)? searchError,
    TResult? Function(String error)? error,
  }) {
    return searchError?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Questions>? questions)? loaded,
    TResult Function()? searchLoading,
    TResult Function(String error)? searchError,
    TResult Function(String error)? error,
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
    required TResult Function(_SearchLoading value) searchLoading,
    required TResult Function(_SearchError value) searchError,
    required TResult Function(_Error value) error,
  }) {
    return searchError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_SearchLoading value)? searchLoading,
    TResult? Function(_SearchError value)? searchError,
    TResult? Function(_Error value)? error,
  }) {
    return searchError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_SearchLoading value)? searchLoading,
    TResult Function(_SearchError value)? searchError,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (searchError != null) {
      return searchError(this);
    }
    return orElse();
  }
}

abstract class _SearchError extends ResponsesState {
  const factory _SearchError({required final String error}) = _$_SearchError;
  const _SearchError._() : super._();

  String get error;
  @JsonKey(ignore: true)
  _$$_SearchErrorCopyWith<_$_SearchError> get copyWith =>
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
    extends _$ResponsesStateCopyWithImpl<$Res, _$_Error>
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
    return 'ResponsesState.error(error: $error)';
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
    required TResult Function(List<Questions>? questions) loaded,
    required TResult Function() searchLoading,
    required TResult Function(String error) searchError,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Questions>? questions)? loaded,
    TResult? Function()? searchLoading,
    TResult? Function(String error)? searchError,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Questions>? questions)? loaded,
    TResult Function()? searchLoading,
    TResult Function(String error)? searchError,
    TResult Function(String error)? error,
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
    required TResult Function(_SearchLoading value) searchLoading,
    required TResult Function(_SearchError value) searchError,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_SearchLoading value)? searchLoading,
    TResult? Function(_SearchError value)? searchError,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_SearchLoading value)? searchLoading,
    TResult Function(_SearchError value)? searchError,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error extends ResponsesState {
  const factory _Error({required final String error}) = _$_Error;
  const _Error._() : super._();

  String get error;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
