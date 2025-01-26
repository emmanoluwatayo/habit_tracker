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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(fb_auth.User? user) authChanges,
    required TResult Function() signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(fb_auth.User? user)? authChanges,
    TResult? Function()? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(fb_auth.User? user)? authChanges,
    TResult Function()? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthChangeEvent value) authChanges,
    required TResult Function(SignOutEvent value) signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthChangeEvent value)? authChanges,
    TResult? Function(SignOutEvent value)? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthChangeEvent value)? authChanges,
    TResult Function(SignOutEvent value)? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res, AuthenticationEvent>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res, $Val extends AuthenticationEvent>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthChangeEventImplCopyWith<$Res> {
  factory _$$AuthChangeEventImplCopyWith(_$AuthChangeEventImpl value,
          $Res Function(_$AuthChangeEventImpl) then) =
      __$$AuthChangeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({fb_auth.User? user});
}

/// @nodoc
class __$$AuthChangeEventImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$AuthChangeEventImpl>
    implements _$$AuthChangeEventImplCopyWith<$Res> {
  __$$AuthChangeEventImplCopyWithImpl(
      _$AuthChangeEventImpl _value, $Res Function(_$AuthChangeEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$AuthChangeEventImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as fb_auth.User?,
    ));
  }
}

/// @nodoc

class _$AuthChangeEventImpl implements AuthChangeEvent {
  const _$AuthChangeEventImpl({required this.user});

  @override
  final fb_auth.User? user;

  @override
  String toString() {
    return 'AuthenticationEvent.authChanges(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthChangeEventImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthChangeEventImplCopyWith<_$AuthChangeEventImpl> get copyWith =>
      __$$AuthChangeEventImplCopyWithImpl<_$AuthChangeEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(fb_auth.User? user) authChanges,
    required TResult Function() signOut,
  }) {
    return authChanges(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(fb_auth.User? user)? authChanges,
    TResult? Function()? signOut,
  }) {
    return authChanges?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(fb_auth.User? user)? authChanges,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (authChanges != null) {
      return authChanges(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthChangeEvent value) authChanges,
    required TResult Function(SignOutEvent value) signOut,
  }) {
    return authChanges(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthChangeEvent value)? authChanges,
    TResult? Function(SignOutEvent value)? signOut,
  }) {
    return authChanges?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthChangeEvent value)? authChanges,
    TResult Function(SignOutEvent value)? signOut,
    required TResult orElse(),
  }) {
    if (authChanges != null) {
      return authChanges(this);
    }
    return orElse();
  }
}

abstract class AuthChangeEvent implements AuthenticationEvent {
  const factory AuthChangeEvent({required final fb_auth.User? user}) =
      _$AuthChangeEventImpl;

  fb_auth.User? get user;
  @JsonKey(ignore: true)
  _$$AuthChangeEventImplCopyWith<_$AuthChangeEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignOutEventImplCopyWith<$Res> {
  factory _$$SignOutEventImplCopyWith(
          _$SignOutEventImpl value, $Res Function(_$SignOutEventImpl) then) =
      __$$SignOutEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutEventImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$SignOutEventImpl>
    implements _$$SignOutEventImplCopyWith<$Res> {
  __$$SignOutEventImplCopyWithImpl(
      _$SignOutEventImpl _value, $Res Function(_$SignOutEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignOutEventImpl implements SignOutEvent {
  const _$SignOutEventImpl();

  @override
  String toString() {
    return 'AuthenticationEvent.signOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOutEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(fb_auth.User? user) authChanges,
    required TResult Function() signOut,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(fb_auth.User? user)? authChanges,
    TResult? Function()? signOut,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(fb_auth.User? user)? authChanges,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthChangeEvent value) authChanges,
    required TResult Function(SignOutEvent value) signOut,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthChangeEvent value)? authChanges,
    TResult? Function(SignOutEvent value)? signOut,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthChangeEvent value)? authChanges,
    TResult Function(SignOutEvent value)? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class SignOutEvent implements AuthenticationEvent {
  const factory SignOutEvent() = _$SignOutEventImpl;
}

/// @nodoc
mixin _$AuthenticationState {
  fb_auth.User? get user => throw _privateConstructorUsedError;
  ProcessingStatus get processingStatus => throw _privateConstructorUsedError;
  CustomError get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticationStateCopyWith<AuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res, AuthenticationState>;
  @useResult
  $Res call(
      {fb_auth.User? user,
      ProcessingStatus processingStatus,
      CustomError error});
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res, $Val extends AuthenticationState>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? processingStatus = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as fb_auth.User?,
      processingStatus: null == processingStatus
          ? _value.processingStatus
          : processingStatus // ignore: cast_nullable_to_non_nullable
              as ProcessingStatus,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as CustomError,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthenticationStateImplCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$AuthenticationStateImplCopyWith(_$AuthenticationStateImpl value,
          $Res Function(_$AuthenticationStateImpl) then) =
      __$$AuthenticationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {fb_auth.User? user,
      ProcessingStatus processingStatus,
      CustomError error});
}

/// @nodoc
class __$$AuthenticationStateImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$AuthenticationStateImpl>
    implements _$$AuthenticationStateImplCopyWith<$Res> {
  __$$AuthenticationStateImplCopyWithImpl(_$AuthenticationStateImpl _value,
      $Res Function(_$AuthenticationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? processingStatus = null,
    Object? error = null,
  }) {
    return _then(_$AuthenticationStateImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as fb_auth.User?,
      processingStatus: null == processingStatus
          ? _value.processingStatus
          : processingStatus // ignore: cast_nullable_to_non_nullable
              as ProcessingStatus,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as CustomError,
    ));
  }
}

/// @nodoc

class _$AuthenticationStateImpl implements _AuthenticationState {
  const _$AuthenticationStateImpl(
      {this.user, required this.processingStatus, required this.error});

  @override
  final fb_auth.User? user;
  @override
  final ProcessingStatus processingStatus;
  @override
  final CustomError error;

  @override
  String toString() {
    return 'AuthenticationState(user: $user, processingStatus: $processingStatus, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationStateImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.processingStatus, processingStatus) ||
                other.processingStatus == processingStatus) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, processingStatus, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationStateImplCopyWith<_$AuthenticationStateImpl> get copyWith =>
      __$$AuthenticationStateImplCopyWithImpl<_$AuthenticationStateImpl>(
          this, _$identity);
}

abstract class _AuthenticationState implements AuthenticationState {
  const factory _AuthenticationState(
      {final fb_auth.User? user,
      required final ProcessingStatus processingStatus,
      required final CustomError error}) = _$AuthenticationStateImpl;

  @override
  fb_auth.User? get user;
  @override
  ProcessingStatus get processingStatus;
  @override
  CustomError get error;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticationStateImplCopyWith<_$AuthenticationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
