// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegistrationEvent {
  String get emailAddress => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailAddress, String password,
            String phoneNumber, String fullName)
        registerWithEmailAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailAddress, String password, String phoneNumber,
            String fullName)?
        registerWithEmailAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailAddress, String password, String phoneNumber,
            String fullName)?
        registerWithEmailAndPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegistrationEventCopyWith<RegistrationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationEventCopyWith<$Res> {
  factory $RegistrationEventCopyWith(
          RegistrationEvent value, $Res Function(RegistrationEvent) then) =
      _$RegistrationEventCopyWithImpl<$Res, RegistrationEvent>;
  @useResult
  $Res call(
      {String emailAddress,
      String password,
      String phoneNumber,
      String fullName});
}

/// @nodoc
class _$RegistrationEventCopyWithImpl<$Res, $Val extends RegistrationEvent>
    implements $RegistrationEventCopyWith<$Res> {
  _$RegistrationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
    Object? phoneNumber = null,
    Object? fullName = null,
  }) {
    return _then(_value.copyWith(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterWithEmailAndPasswordImplCopyWith<$Res>
    implements $RegistrationEventCopyWith<$Res> {
  factory _$$RegisterWithEmailAndPasswordImplCopyWith(
          _$RegisterWithEmailAndPasswordImpl value,
          $Res Function(_$RegisterWithEmailAndPasswordImpl) then) =
      __$$RegisterWithEmailAndPasswordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String emailAddress,
      String password,
      String phoneNumber,
      String fullName});
}

/// @nodoc
class __$$RegisterWithEmailAndPasswordImplCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res,
        _$RegisterWithEmailAndPasswordImpl>
    implements _$$RegisterWithEmailAndPasswordImplCopyWith<$Res> {
  __$$RegisterWithEmailAndPasswordImplCopyWithImpl(
      _$RegisterWithEmailAndPasswordImpl _value,
      $Res Function(_$RegisterWithEmailAndPasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
    Object? phoneNumber = null,
    Object? fullName = null,
  }) {
    return _then(_$RegisterWithEmailAndPasswordImpl(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterWithEmailAndPasswordImpl
    implements RegisterWithEmailAndPassword {
  const _$RegisterWithEmailAndPasswordImpl(
      {required this.emailAddress,
      required this.password,
      required this.phoneNumber,
      required this.fullName});

  @override
  final String emailAddress;
  @override
  final String password;
  @override
  final String phoneNumber;
  @override
  final String fullName;

  @override
  String toString() {
    return 'RegistrationEvent.registerWithEmailAndPassword(emailAddress: $emailAddress, password: $password, phoneNumber: $phoneNumber, fullName: $fullName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterWithEmailAndPasswordImpl &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, emailAddress, password, phoneNumber, fullName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterWithEmailAndPasswordImplCopyWith<
          _$RegisterWithEmailAndPasswordImpl>
      get copyWith => __$$RegisterWithEmailAndPasswordImplCopyWithImpl<
          _$RegisterWithEmailAndPasswordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailAddress, String password,
            String phoneNumber, String fullName)
        registerWithEmailAndPassword,
  }) {
    return registerWithEmailAndPassword(
        emailAddress, password, phoneNumber, fullName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailAddress, String password, String phoneNumber,
            String fullName)?
        registerWithEmailAndPassword,
  }) {
    return registerWithEmailAndPassword?.call(
        emailAddress, password, phoneNumber, fullName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailAddress, String password, String phoneNumber,
            String fullName)?
        registerWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPassword != null) {
      return registerWithEmailAndPassword(
          emailAddress, password, phoneNumber, fullName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
  }) {
    return registerWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
  }) {
    return registerWithEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPassword != null) {
      return registerWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class RegisterWithEmailAndPassword implements RegistrationEvent {
  const factory RegisterWithEmailAndPassword(
      {required final String emailAddress,
      required final String password,
      required final String phoneNumber,
      required final String fullName}) = _$RegisterWithEmailAndPasswordImpl;

  @override
  String get emailAddress;
  @override
  String get password;
  @override
  String get phoneNumber;
  @override
  String get fullName;
  @override
  @JsonKey(ignore: true)
  _$$RegisterWithEmailAndPasswordImplCopyWith<
          _$RegisterWithEmailAndPasswordImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegistrationState {
  ProcessingStatus get processingStatus => throw _privateConstructorUsedError;
  CustomError get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegistrationStateCopyWith<RegistrationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationStateCopyWith<$Res> {
  factory $RegistrationStateCopyWith(
          RegistrationState value, $Res Function(RegistrationState) then) =
      _$RegistrationStateCopyWithImpl<$Res, RegistrationState>;
  @useResult
  $Res call({ProcessingStatus processingStatus, CustomError error});
}

/// @nodoc
class _$RegistrationStateCopyWithImpl<$Res, $Val extends RegistrationState>
    implements $RegistrationStateCopyWith<$Res> {
  _$RegistrationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? processingStatus = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$RegistrationStateImplCopyWith<$Res>
    implements $RegistrationStateCopyWith<$Res> {
  factory _$$RegistrationStateImplCopyWith(_$RegistrationStateImpl value,
          $Res Function(_$RegistrationStateImpl) then) =
      __$$RegistrationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProcessingStatus processingStatus, CustomError error});
}

/// @nodoc
class __$$RegistrationStateImplCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$RegistrationStateImpl>
    implements _$$RegistrationStateImplCopyWith<$Res> {
  __$$RegistrationStateImplCopyWithImpl(_$RegistrationStateImpl _value,
      $Res Function(_$RegistrationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? processingStatus = null,
    Object? error = null,
  }) {
    return _then(_$RegistrationStateImpl(
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

class _$RegistrationStateImpl implements _RegistrationState {
  const _$RegistrationStateImpl(
      {required this.processingStatus, required this.error});

  @override
  final ProcessingStatus processingStatus;
  @override
  final CustomError error;

  @override
  String toString() {
    return 'RegistrationState(processingStatus: $processingStatus, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationStateImpl &&
            (identical(other.processingStatus, processingStatus) ||
                other.processingStatus == processingStatus) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, processingStatus, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationStateImplCopyWith<_$RegistrationStateImpl> get copyWith =>
      __$$RegistrationStateImplCopyWithImpl<_$RegistrationStateImpl>(
          this, _$identity);
}

abstract class _RegistrationState implements RegistrationState {
  const factory _RegistrationState(
      {required final ProcessingStatus processingStatus,
      required final CustomError error}) = _$RegistrationStateImpl;

  @override
  ProcessingStatus get processingStatus;
  @override
  CustomError get error;
  @override
  @JsonKey(ignore: true)
  _$$RegistrationStateImplCopyWith<_$RegistrationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
