// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complete_reg_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CompleteRegEvent {
  String get address => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get occupation => throw _privateConstructorUsedError;
  String get lga => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String address, String country, String state,
            String city, String occupation, String lga)
        completeRegistration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String address, String country, String state, String city,
            String occupation, String lga)?
        completeRegistration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address, String country, String state, String city,
            String occupation, String lga)?
        completeRegistration,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompleteRegistration value) completeRegistration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CompleteRegistration value)? completeRegistration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompleteRegistration value)? completeRegistration,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CompleteRegEventCopyWith<CompleteRegEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompleteRegEventCopyWith<$Res> {
  factory $CompleteRegEventCopyWith(
          CompleteRegEvent value, $Res Function(CompleteRegEvent) then) =
      _$CompleteRegEventCopyWithImpl<$Res, CompleteRegEvent>;
  @useResult
  $Res call(
      {String address,
      String country,
      String state,
      String city,
      String occupation,
      String lga});
}

/// @nodoc
class _$CompleteRegEventCopyWithImpl<$Res, $Val extends CompleteRegEvent>
    implements $CompleteRegEventCopyWith<$Res> {
  _$CompleteRegEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? country = null,
    Object? state = null,
    Object? city = null,
    Object? occupation = null,
    Object? lga = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      occupation: null == occupation
          ? _value.occupation
          : occupation // ignore: cast_nullable_to_non_nullable
              as String,
      lga: null == lga
          ? _value.lga
          : lga // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompleteRegistrationImplCopyWith<$Res>
    implements $CompleteRegEventCopyWith<$Res> {
  factory _$$CompleteRegistrationImplCopyWith(_$CompleteRegistrationImpl value,
          $Res Function(_$CompleteRegistrationImpl) then) =
      __$$CompleteRegistrationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String address,
      String country,
      String state,
      String city,
      String occupation,
      String lga});
}

/// @nodoc
class __$$CompleteRegistrationImplCopyWithImpl<$Res>
    extends _$CompleteRegEventCopyWithImpl<$Res, _$CompleteRegistrationImpl>
    implements _$$CompleteRegistrationImplCopyWith<$Res> {
  __$$CompleteRegistrationImplCopyWithImpl(_$CompleteRegistrationImpl _value,
      $Res Function(_$CompleteRegistrationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? country = null,
    Object? state = null,
    Object? city = null,
    Object? occupation = null,
    Object? lga = null,
  }) {
    return _then(_$CompleteRegistrationImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      occupation: null == occupation
          ? _value.occupation
          : occupation // ignore: cast_nullable_to_non_nullable
              as String,
      lga: null == lga
          ? _value.lga
          : lga // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CompleteRegistrationImpl
    with DiagnosticableTreeMixin
    implements CompleteRegistration {
  const _$CompleteRegistrationImpl(
      {required this.address,
      required this.country,
      required this.state,
      required this.city,
      required this.occupation,
      required this.lga});

  @override
  final String address;
  @override
  final String country;
  @override
  final String state;
  @override
  final String city;
  @override
  final String occupation;
  @override
  final String lga;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CompleteRegEvent.completeRegistration(address: $address, country: $country, state: $state, city: $city, occupation: $occupation, lga: $lga)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'CompleteRegEvent.completeRegistration'))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('country', country))
      ..add(DiagnosticsProperty('state', state))
      ..add(DiagnosticsProperty('city', city))
      ..add(DiagnosticsProperty('occupation', occupation))
      ..add(DiagnosticsProperty('lga', lga));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteRegistrationImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.occupation, occupation) ||
                other.occupation == occupation) &&
            (identical(other.lga, lga) || other.lga == lga));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, address, country, state, city, occupation, lga);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompleteRegistrationImplCopyWith<_$CompleteRegistrationImpl>
      get copyWith =>
          __$$CompleteRegistrationImplCopyWithImpl<_$CompleteRegistrationImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String address, String country, String state,
            String city, String occupation, String lga)
        completeRegistration,
  }) {
    return completeRegistration(address, country, state, city, occupation, lga);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String address, String country, String state, String city,
            String occupation, String lga)?
        completeRegistration,
  }) {
    return completeRegistration?.call(
        address, country, state, city, occupation, lga);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address, String country, String state, String city,
            String occupation, String lga)?
        completeRegistration,
    required TResult orElse(),
  }) {
    if (completeRegistration != null) {
      return completeRegistration(
          address, country, state, city, occupation, lga);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompleteRegistration value) completeRegistration,
  }) {
    return completeRegistration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CompleteRegistration value)? completeRegistration,
  }) {
    return completeRegistration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompleteRegistration value)? completeRegistration,
    required TResult orElse(),
  }) {
    if (completeRegistration != null) {
      return completeRegistration(this);
    }
    return orElse();
  }
}

abstract class CompleteRegistration implements CompleteRegEvent {
  const factory CompleteRegistration(
      {required final String address,
      required final String country,
      required final String state,
      required final String city,
      required final String occupation,
      required final String lga}) = _$CompleteRegistrationImpl;

  @override
  String get address;
  @override
  String get country;
  @override
  String get state;
  @override
  String get city;
  @override
  String get occupation;
  @override
  String get lga;
  @override
  @JsonKey(ignore: true)
  _$$CompleteRegistrationImplCopyWith<_$CompleteRegistrationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CompleteRegState {
  ProcessingStatus get processingStatus => throw _privateConstructorUsedError;
  CustomError get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CompleteRegStateCopyWith<CompleteRegState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompleteRegStateCopyWith<$Res> {
  factory $CompleteRegStateCopyWith(
          CompleteRegState value, $Res Function(CompleteRegState) then) =
      _$CompleteRegStateCopyWithImpl<$Res, CompleteRegState>;
  @useResult
  $Res call({ProcessingStatus processingStatus, CustomError error});
}

/// @nodoc
class _$CompleteRegStateCopyWithImpl<$Res, $Val extends CompleteRegState>
    implements $CompleteRegStateCopyWith<$Res> {
  _$CompleteRegStateCopyWithImpl(this._value, this._then);

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
abstract class _$$CompleteRegStateImplCopyWith<$Res>
    implements $CompleteRegStateCopyWith<$Res> {
  factory _$$CompleteRegStateImplCopyWith(_$CompleteRegStateImpl value,
          $Res Function(_$CompleteRegStateImpl) then) =
      __$$CompleteRegStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProcessingStatus processingStatus, CustomError error});
}

/// @nodoc
class __$$CompleteRegStateImplCopyWithImpl<$Res>
    extends _$CompleteRegStateCopyWithImpl<$Res, _$CompleteRegStateImpl>
    implements _$$CompleteRegStateImplCopyWith<$Res> {
  __$$CompleteRegStateImplCopyWithImpl(_$CompleteRegStateImpl _value,
      $Res Function(_$CompleteRegStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? processingStatus = null,
    Object? error = null,
  }) {
    return _then(_$CompleteRegStateImpl(
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

class _$CompleteRegStateImpl
    with DiagnosticableTreeMixin
    implements _CompleteRegState {
  const _$CompleteRegStateImpl(
      {required this.processingStatus, required this.error});

  @override
  final ProcessingStatus processingStatus;
  @override
  final CustomError error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CompleteRegState(processingStatus: $processingStatus, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CompleteRegState'))
      ..add(DiagnosticsProperty('processingStatus', processingStatus))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteRegStateImpl &&
            (identical(other.processingStatus, processingStatus) ||
                other.processingStatus == processingStatus) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, processingStatus, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompleteRegStateImplCopyWith<_$CompleteRegStateImpl> get copyWith =>
      __$$CompleteRegStateImplCopyWithImpl<_$CompleteRegStateImpl>(
          this, _$identity);
}

abstract class _CompleteRegState implements CompleteRegState {
  const factory _CompleteRegState(
      {required final ProcessingStatus processingStatus,
      required final CustomError error}) = _$CompleteRegStateImpl;

  @override
  ProcessingStatus get processingStatus;
  @override
  CustomError get error;
  @override
  @JsonKey(ignore: true)
  _$$CompleteRegStateImplCopyWith<_$CompleteRegStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
