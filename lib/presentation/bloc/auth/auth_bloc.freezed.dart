// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logout,
    required TResult Function(User? user) initUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logout,
    TResult? Function(User? user)? initUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logout,
    TResult Function(User? user)? initUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LogoutEvent value) logout,
    required TResult Function(_InitUserEvent value) initUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LogoutEvent value)? logout,
    TResult? Function(_InitUserEvent value)? initUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LogoutEvent value)? logout,
    TResult Function(_InitUserEvent value)? initUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LogoutEventCopyWith<$Res> {
  factory _$$_LogoutEventCopyWith(
          _$_LogoutEvent value, $Res Function(_$_LogoutEvent) then) =
      __$$_LogoutEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LogoutEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_LogoutEvent>
    implements _$$_LogoutEventCopyWith<$Res> {
  __$$_LogoutEventCopyWithImpl(
      _$_LogoutEvent _value, $Res Function(_$_LogoutEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LogoutEvent implements _LogoutEvent {
  const _$_LogoutEvent();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LogoutEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logout,
    required TResult Function(User? user) initUser,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logout,
    TResult? Function(User? user)? initUser,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logout,
    TResult Function(User? user)? initUser,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LogoutEvent value) logout,
    required TResult Function(_InitUserEvent value) initUser,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LogoutEvent value)? logout,
    TResult? Function(_InitUserEvent value)? initUser,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LogoutEvent value)? logout,
    TResult Function(_InitUserEvent value)? initUser,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _LogoutEvent implements AuthEvent {
  const factory _LogoutEvent() = _$_LogoutEvent;
}

/// @nodoc
abstract class _$$_InitUserEventCopyWith<$Res> {
  factory _$$_InitUserEventCopyWith(
          _$_InitUserEvent value, $Res Function(_$_InitUserEvent) then) =
      __$$_InitUserEventCopyWithImpl<$Res>;
  @useResult
  $Res call({User? user});
}

/// @nodoc
class __$$_InitUserEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_InitUserEvent>
    implements _$$_InitUserEventCopyWith<$Res> {
  __$$_InitUserEventCopyWithImpl(
      _$_InitUserEvent _value, $Res Function(_$_InitUserEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$_InitUserEvent(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$_InitUserEvent implements _InitUserEvent {
  const _$_InitUserEvent({required this.user});

  @override
  final User? user;

  @override
  String toString() {
    return 'AuthEvent.initUser(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitUserEvent &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitUserEventCopyWith<_$_InitUserEvent> get copyWith =>
      __$$_InitUserEventCopyWithImpl<_$_InitUserEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logout,
    required TResult Function(User? user) initUser,
  }) {
    return initUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logout,
    TResult? Function(User? user)? initUser,
  }) {
    return initUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logout,
    TResult Function(User? user)? initUser,
    required TResult orElse(),
  }) {
    if (initUser != null) {
      return initUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LogoutEvent value) logout,
    required TResult Function(_InitUserEvent value) initUser,
  }) {
    return initUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LogoutEvent value)? logout,
    TResult? Function(_InitUserEvent value)? initUser,
  }) {
    return initUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LogoutEvent value)? logout,
    TResult Function(_InitUserEvent value)? initUser,
    required TResult orElse(),
  }) {
    if (initUser != null) {
      return initUser(this);
    }
    return orElse();
  }
}

abstract class _InitUserEvent implements AuthEvent {
  const factory _InitUserEvent({required final User? user}) = _$_InitUserEvent;

  User? get user;
  @JsonKey(ignore: true)
  _$$_InitUserEventCopyWith<_$_InitUserEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthenticated,
    required TResult Function(User user) authenticated,
    required TResult Function() undefined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthenticated,
    TResult? Function(User user)? authenticated,
    TResult? Function()? undefined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function(User user)? authenticated,
    TResult Function()? undefined,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UnauthenticaredState value) unauthenticated,
    required TResult Function(_AuthenticatedState value) authenticated,
    required TResult Function(_UndefinedState value) undefined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_UnauthenticaredState value)? unauthenticated,
    TResult? Function(_AuthenticatedState value)? authenticated,
    TResult? Function(_UndefinedState value)? undefined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UnauthenticaredState value)? unauthenticated,
    TResult Function(_AuthenticatedState value)? authenticated,
    TResult Function(_UndefinedState value)? undefined,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

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
    extends _$AuthStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial() : super._();

  @override
  String toString() {
    return 'AuthState.initial()';
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
    required TResult Function() unauthenticated,
    required TResult Function(User user) authenticated,
    required TResult Function() undefined,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthenticated,
    TResult? Function(User user)? authenticated,
    TResult? Function()? undefined,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function(User user)? authenticated,
    TResult Function()? undefined,
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
    required TResult Function(_UnauthenticaredState value) unauthenticated,
    required TResult Function(_AuthenticatedState value) authenticated,
    required TResult Function(_UndefinedState value) undefined,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_UnauthenticaredState value)? unauthenticated,
    TResult? Function(_AuthenticatedState value)? authenticated,
    TResult? Function(_UndefinedState value)? undefined,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UnauthenticaredState value)? unauthenticated,
    TResult Function(_AuthenticatedState value)? authenticated,
    TResult Function(_UndefinedState value)? undefined,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends AuthState {
  const factory _Initial() = _$_Initial;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$_UnauthenticaredStateCopyWith<$Res> {
  factory _$$_UnauthenticaredStateCopyWith(_$_UnauthenticaredState value,
          $Res Function(_$_UnauthenticaredState) then) =
      __$$_UnauthenticaredStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnauthenticaredStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_UnauthenticaredState>
    implements _$$_UnauthenticaredStateCopyWith<$Res> {
  __$$_UnauthenticaredStateCopyWithImpl(_$_UnauthenticaredState _value,
      $Res Function(_$_UnauthenticaredState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UnauthenticaredState extends _UnauthenticaredState {
  const _$_UnauthenticaredState() : super._();

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UnauthenticaredState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthenticated,
    required TResult Function(User user) authenticated,
    required TResult Function() undefined,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthenticated,
    TResult? Function(User user)? authenticated,
    TResult? Function()? undefined,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function(User user)? authenticated,
    TResult Function()? undefined,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UnauthenticaredState value) unauthenticated,
    required TResult Function(_AuthenticatedState value) authenticated,
    required TResult Function(_UndefinedState value) undefined,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_UnauthenticaredState value)? unauthenticated,
    TResult? Function(_AuthenticatedState value)? authenticated,
    TResult? Function(_UndefinedState value)? undefined,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UnauthenticaredState value)? unauthenticated,
    TResult Function(_AuthenticatedState value)? authenticated,
    TResult Function(_UndefinedState value)? undefined,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _UnauthenticaredState extends AuthState {
  const factory _UnauthenticaredState() = _$_UnauthenticaredState;
  const _UnauthenticaredState._() : super._();
}

/// @nodoc
abstract class _$$_AuthenticatedStateCopyWith<$Res> {
  factory _$$_AuthenticatedStateCopyWith(_$_AuthenticatedState value,
          $Res Function(_$_AuthenticatedState) then) =
      __$$_AuthenticatedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$_AuthenticatedStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthenticatedState>
    implements _$$_AuthenticatedStateCopyWith<$Res> {
  __$$_AuthenticatedStateCopyWithImpl(
      _$_AuthenticatedState _value, $Res Function(_$_AuthenticatedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_AuthenticatedState(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$_AuthenticatedState extends _AuthenticatedState {
  const _$_AuthenticatedState({required this.user}) : super._();

  @override
  final User user;

  @override
  String toString() {
    return 'AuthState.authenticated(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticatedState &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthenticatedStateCopyWith<_$_AuthenticatedState> get copyWith =>
      __$$_AuthenticatedStateCopyWithImpl<_$_AuthenticatedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthenticated,
    required TResult Function(User user) authenticated,
    required TResult Function() undefined,
  }) {
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthenticated,
    TResult? Function(User user)? authenticated,
    TResult? Function()? undefined,
  }) {
    return authenticated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function(User user)? authenticated,
    TResult Function()? undefined,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UnauthenticaredState value) unauthenticated,
    required TResult Function(_AuthenticatedState value) authenticated,
    required TResult Function(_UndefinedState value) undefined,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_UnauthenticaredState value)? unauthenticated,
    TResult? Function(_AuthenticatedState value)? authenticated,
    TResult? Function(_UndefinedState value)? undefined,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UnauthenticaredState value)? unauthenticated,
    TResult Function(_AuthenticatedState value)? authenticated,
    TResult Function(_UndefinedState value)? undefined,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _AuthenticatedState extends AuthState {
  const factory _AuthenticatedState({required final User user}) =
      _$_AuthenticatedState;
  const _AuthenticatedState._() : super._();

  User get user;
  @JsonKey(ignore: true)
  _$$_AuthenticatedStateCopyWith<_$_AuthenticatedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UndefinedStateCopyWith<$Res> {
  factory _$$_UndefinedStateCopyWith(
          _$_UndefinedState value, $Res Function(_$_UndefinedState) then) =
      __$$_UndefinedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UndefinedStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_UndefinedState>
    implements _$$_UndefinedStateCopyWith<$Res> {
  __$$_UndefinedStateCopyWithImpl(
      _$_UndefinedState _value, $Res Function(_$_UndefinedState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UndefinedState extends _UndefinedState {
  const _$_UndefinedState() : super._();

  @override
  String toString() {
    return 'AuthState.undefined()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UndefinedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthenticated,
    required TResult Function(User user) authenticated,
    required TResult Function() undefined,
  }) {
    return undefined();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthenticated,
    TResult? Function(User user)? authenticated,
    TResult? Function()? undefined,
  }) {
    return undefined?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function(User user)? authenticated,
    TResult Function()? undefined,
    required TResult orElse(),
  }) {
    if (undefined != null) {
      return undefined();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UnauthenticaredState value) unauthenticated,
    required TResult Function(_AuthenticatedState value) authenticated,
    required TResult Function(_UndefinedState value) undefined,
  }) {
    return undefined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_UnauthenticaredState value)? unauthenticated,
    TResult? Function(_AuthenticatedState value)? authenticated,
    TResult? Function(_UndefinedState value)? undefined,
  }) {
    return undefined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UnauthenticaredState value)? unauthenticated,
    TResult Function(_AuthenticatedState value)? authenticated,
    TResult Function(_UndefinedState value)? undefined,
    required TResult orElse(),
  }) {
    if (undefined != null) {
      return undefined(this);
    }
    return orElse();
  }
}

abstract class _UndefinedState extends AuthState {
  const factory _UndefinedState() = _$_UndefinedState;
  const _UndefinedState._() : super._();
}
