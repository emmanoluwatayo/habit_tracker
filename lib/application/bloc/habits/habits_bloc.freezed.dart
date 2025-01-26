// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'habits_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HabitsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String title, String frequency, DateTime time, List<String>? days)
        addHabit,
    required TResult Function(String habitId, String title, String frequency,
            DateTime time, List<String>? days)
        editHabit,
    required TResult Function(String habitId) deleteHabit,
    required TResult Function() fetchHabits,
    required TResult Function(String habitId, DateTime completedDate)
        markHabitAsDone,
    required TResult Function(bool isWeekly) fetchProgress,
    required TResult Function() fetchStatistics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String title, String frequency, DateTime time, List<String>? days)?
        addHabit,
    TResult? Function(String habitId, String title, String frequency,
            DateTime time, List<String>? days)?
        editHabit,
    TResult? Function(String habitId)? deleteHabit,
    TResult? Function()? fetchHabits,
    TResult? Function(String habitId, DateTime completedDate)? markHabitAsDone,
    TResult? Function(bool isWeekly)? fetchProgress,
    TResult? Function()? fetchStatistics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String title, String frequency, DateTime time, List<String>? days)?
        addHabit,
    TResult Function(String habitId, String title, String frequency,
            DateTime time, List<String>? days)?
        editHabit,
    TResult Function(String habitId)? deleteHabit,
    TResult Function()? fetchHabits,
    TResult Function(String habitId, DateTime completedDate)? markHabitAsDone,
    TResult Function(bool isWeekly)? fetchProgress,
    TResult Function()? fetchStatistics,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddHabit value) addHabit,
    required TResult Function(EditHabit value) editHabit,
    required TResult Function(DeleteHabit value) deleteHabit,
    required TResult Function(FetchHabits value) fetchHabits,
    required TResult Function(MarkHabitAsDone value) markHabitAsDone,
    required TResult Function(FetchProgress value) fetchProgress,
    required TResult Function(FetchStatistics value) fetchStatistics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddHabit value)? addHabit,
    TResult? Function(EditHabit value)? editHabit,
    TResult? Function(DeleteHabit value)? deleteHabit,
    TResult? Function(FetchHabits value)? fetchHabits,
    TResult? Function(MarkHabitAsDone value)? markHabitAsDone,
    TResult? Function(FetchProgress value)? fetchProgress,
    TResult? Function(FetchStatistics value)? fetchStatistics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddHabit value)? addHabit,
    TResult Function(EditHabit value)? editHabit,
    TResult Function(DeleteHabit value)? deleteHabit,
    TResult Function(FetchHabits value)? fetchHabits,
    TResult Function(MarkHabitAsDone value)? markHabitAsDone,
    TResult Function(FetchProgress value)? fetchProgress,
    TResult Function(FetchStatistics value)? fetchStatistics,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitsEventCopyWith<$Res> {
  factory $HabitsEventCopyWith(
          HabitsEvent value, $Res Function(HabitsEvent) then) =
      _$HabitsEventCopyWithImpl<$Res, HabitsEvent>;
}

/// @nodoc
class _$HabitsEventCopyWithImpl<$Res, $Val extends HabitsEvent>
    implements $HabitsEventCopyWith<$Res> {
  _$HabitsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddHabitImplCopyWith<$Res> {
  factory _$$AddHabitImplCopyWith(
          _$AddHabitImpl value, $Res Function(_$AddHabitImpl) then) =
      __$$AddHabitImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String title, String frequency, DateTime time, List<String>? days});
}

/// @nodoc
class __$$AddHabitImplCopyWithImpl<$Res>
    extends _$HabitsEventCopyWithImpl<$Res, _$AddHabitImpl>
    implements _$$AddHabitImplCopyWith<$Res> {
  __$$AddHabitImplCopyWithImpl(
      _$AddHabitImpl _value, $Res Function(_$AddHabitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? frequency = null,
    Object? time = null,
    Object? days = freezed,
  }) {
    return _then(_$AddHabitImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      frequency: null == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      days: freezed == days
          ? _value._days
          : days // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$AddHabitImpl implements AddHabit {
  const _$AddHabitImpl(
      {required this.title,
      required this.frequency,
      required this.time,
      final List<String>? days})
      : _days = days;

  @override
  final String title;
  @override
  final String frequency;
  @override
  final DateTime time;
  final List<String>? _days;
  @override
  List<String>? get days {
    final value = _days;
    if (value == null) return null;
    if (_days is EqualUnmodifiableListView) return _days;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HabitsEvent.addHabit(title: $title, frequency: $frequency, time: $time, days: $days)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddHabitImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency) &&
            (identical(other.time, time) || other.time == time) &&
            const DeepCollectionEquality().equals(other._days, _days));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, frequency, time,
      const DeepCollectionEquality().hash(_days));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddHabitImplCopyWith<_$AddHabitImpl> get copyWith =>
      __$$AddHabitImplCopyWithImpl<_$AddHabitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String title, String frequency, DateTime time, List<String>? days)
        addHabit,
    required TResult Function(String habitId, String title, String frequency,
            DateTime time, List<String>? days)
        editHabit,
    required TResult Function(String habitId) deleteHabit,
    required TResult Function() fetchHabits,
    required TResult Function(String habitId, DateTime completedDate)
        markHabitAsDone,
    required TResult Function(bool isWeekly) fetchProgress,
    required TResult Function() fetchStatistics,
  }) {
    return addHabit(title, frequency, time, days);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String title, String frequency, DateTime time, List<String>? days)?
        addHabit,
    TResult? Function(String habitId, String title, String frequency,
            DateTime time, List<String>? days)?
        editHabit,
    TResult? Function(String habitId)? deleteHabit,
    TResult? Function()? fetchHabits,
    TResult? Function(String habitId, DateTime completedDate)? markHabitAsDone,
    TResult? Function(bool isWeekly)? fetchProgress,
    TResult? Function()? fetchStatistics,
  }) {
    return addHabit?.call(title, frequency, time, days);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String title, String frequency, DateTime time, List<String>? days)?
        addHabit,
    TResult Function(String habitId, String title, String frequency,
            DateTime time, List<String>? days)?
        editHabit,
    TResult Function(String habitId)? deleteHabit,
    TResult Function()? fetchHabits,
    TResult Function(String habitId, DateTime completedDate)? markHabitAsDone,
    TResult Function(bool isWeekly)? fetchProgress,
    TResult Function()? fetchStatistics,
    required TResult orElse(),
  }) {
    if (addHabit != null) {
      return addHabit(title, frequency, time, days);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddHabit value) addHabit,
    required TResult Function(EditHabit value) editHabit,
    required TResult Function(DeleteHabit value) deleteHabit,
    required TResult Function(FetchHabits value) fetchHabits,
    required TResult Function(MarkHabitAsDone value) markHabitAsDone,
    required TResult Function(FetchProgress value) fetchProgress,
    required TResult Function(FetchStatistics value) fetchStatistics,
  }) {
    return addHabit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddHabit value)? addHabit,
    TResult? Function(EditHabit value)? editHabit,
    TResult? Function(DeleteHabit value)? deleteHabit,
    TResult? Function(FetchHabits value)? fetchHabits,
    TResult? Function(MarkHabitAsDone value)? markHabitAsDone,
    TResult? Function(FetchProgress value)? fetchProgress,
    TResult? Function(FetchStatistics value)? fetchStatistics,
  }) {
    return addHabit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddHabit value)? addHabit,
    TResult Function(EditHabit value)? editHabit,
    TResult Function(DeleteHabit value)? deleteHabit,
    TResult Function(FetchHabits value)? fetchHabits,
    TResult Function(MarkHabitAsDone value)? markHabitAsDone,
    TResult Function(FetchProgress value)? fetchProgress,
    TResult Function(FetchStatistics value)? fetchStatistics,
    required TResult orElse(),
  }) {
    if (addHabit != null) {
      return addHabit(this);
    }
    return orElse();
  }
}

abstract class AddHabit implements HabitsEvent {
  const factory AddHabit(
      {required final String title,
      required final String frequency,
      required final DateTime time,
      final List<String>? days}) = _$AddHabitImpl;

  String get title;
  String get frequency;
  DateTime get time;
  List<String>? get days;
  @JsonKey(ignore: true)
  _$$AddHabitImplCopyWith<_$AddHabitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditHabitImplCopyWith<$Res> {
  factory _$$EditHabitImplCopyWith(
          _$EditHabitImpl value, $Res Function(_$EditHabitImpl) then) =
      __$$EditHabitImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String habitId,
      String title,
      String frequency,
      DateTime time,
      List<String>? days});
}

/// @nodoc
class __$$EditHabitImplCopyWithImpl<$Res>
    extends _$HabitsEventCopyWithImpl<$Res, _$EditHabitImpl>
    implements _$$EditHabitImplCopyWith<$Res> {
  __$$EditHabitImplCopyWithImpl(
      _$EditHabitImpl _value, $Res Function(_$EditHabitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? habitId = null,
    Object? title = null,
    Object? frequency = null,
    Object? time = null,
    Object? days = freezed,
  }) {
    return _then(_$EditHabitImpl(
      habitId: null == habitId
          ? _value.habitId
          : habitId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      frequency: null == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      days: freezed == days
          ? _value._days
          : days // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$EditHabitImpl implements EditHabit {
  const _$EditHabitImpl(
      {required this.habitId,
      required this.title,
      required this.frequency,
      required this.time,
      final List<String>? days})
      : _days = days;

  @override
  final String habitId;
  @override
  final String title;
  @override
  final String frequency;
  @override
  final DateTime time;
  final List<String>? _days;
  @override
  List<String>? get days {
    final value = _days;
    if (value == null) return null;
    if (_days is EqualUnmodifiableListView) return _days;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HabitsEvent.editHabit(habitId: $habitId, title: $title, frequency: $frequency, time: $time, days: $days)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditHabitImpl &&
            (identical(other.habitId, habitId) || other.habitId == habitId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency) &&
            (identical(other.time, time) || other.time == time) &&
            const DeepCollectionEquality().equals(other._days, _days));
  }

  @override
  int get hashCode => Object.hash(runtimeType, habitId, title, frequency, time,
      const DeepCollectionEquality().hash(_days));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditHabitImplCopyWith<_$EditHabitImpl> get copyWith =>
      __$$EditHabitImplCopyWithImpl<_$EditHabitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String title, String frequency, DateTime time, List<String>? days)
        addHabit,
    required TResult Function(String habitId, String title, String frequency,
            DateTime time, List<String>? days)
        editHabit,
    required TResult Function(String habitId) deleteHabit,
    required TResult Function() fetchHabits,
    required TResult Function(String habitId, DateTime completedDate)
        markHabitAsDone,
    required TResult Function(bool isWeekly) fetchProgress,
    required TResult Function() fetchStatistics,
  }) {
    return editHabit(habitId, title, frequency, time, days);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String title, String frequency, DateTime time, List<String>? days)?
        addHabit,
    TResult? Function(String habitId, String title, String frequency,
            DateTime time, List<String>? days)?
        editHabit,
    TResult? Function(String habitId)? deleteHabit,
    TResult? Function()? fetchHabits,
    TResult? Function(String habitId, DateTime completedDate)? markHabitAsDone,
    TResult? Function(bool isWeekly)? fetchProgress,
    TResult? Function()? fetchStatistics,
  }) {
    return editHabit?.call(habitId, title, frequency, time, days);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String title, String frequency, DateTime time, List<String>? days)?
        addHabit,
    TResult Function(String habitId, String title, String frequency,
            DateTime time, List<String>? days)?
        editHabit,
    TResult Function(String habitId)? deleteHabit,
    TResult Function()? fetchHabits,
    TResult Function(String habitId, DateTime completedDate)? markHabitAsDone,
    TResult Function(bool isWeekly)? fetchProgress,
    TResult Function()? fetchStatistics,
    required TResult orElse(),
  }) {
    if (editHabit != null) {
      return editHabit(habitId, title, frequency, time, days);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddHabit value) addHabit,
    required TResult Function(EditHabit value) editHabit,
    required TResult Function(DeleteHabit value) deleteHabit,
    required TResult Function(FetchHabits value) fetchHabits,
    required TResult Function(MarkHabitAsDone value) markHabitAsDone,
    required TResult Function(FetchProgress value) fetchProgress,
    required TResult Function(FetchStatistics value) fetchStatistics,
  }) {
    return editHabit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddHabit value)? addHabit,
    TResult? Function(EditHabit value)? editHabit,
    TResult? Function(DeleteHabit value)? deleteHabit,
    TResult? Function(FetchHabits value)? fetchHabits,
    TResult? Function(MarkHabitAsDone value)? markHabitAsDone,
    TResult? Function(FetchProgress value)? fetchProgress,
    TResult? Function(FetchStatistics value)? fetchStatistics,
  }) {
    return editHabit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddHabit value)? addHabit,
    TResult Function(EditHabit value)? editHabit,
    TResult Function(DeleteHabit value)? deleteHabit,
    TResult Function(FetchHabits value)? fetchHabits,
    TResult Function(MarkHabitAsDone value)? markHabitAsDone,
    TResult Function(FetchProgress value)? fetchProgress,
    TResult Function(FetchStatistics value)? fetchStatistics,
    required TResult orElse(),
  }) {
    if (editHabit != null) {
      return editHabit(this);
    }
    return orElse();
  }
}

abstract class EditHabit implements HabitsEvent {
  const factory EditHabit(
      {required final String habitId,
      required final String title,
      required final String frequency,
      required final DateTime time,
      final List<String>? days}) = _$EditHabitImpl;

  String get habitId;
  String get title;
  String get frequency;
  DateTime get time;
  List<String>? get days;
  @JsonKey(ignore: true)
  _$$EditHabitImplCopyWith<_$EditHabitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteHabitImplCopyWith<$Res> {
  factory _$$DeleteHabitImplCopyWith(
          _$DeleteHabitImpl value, $Res Function(_$DeleteHabitImpl) then) =
      __$$DeleteHabitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String habitId});
}

/// @nodoc
class __$$DeleteHabitImplCopyWithImpl<$Res>
    extends _$HabitsEventCopyWithImpl<$Res, _$DeleteHabitImpl>
    implements _$$DeleteHabitImplCopyWith<$Res> {
  __$$DeleteHabitImplCopyWithImpl(
      _$DeleteHabitImpl _value, $Res Function(_$DeleteHabitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? habitId = null,
  }) {
    return _then(_$DeleteHabitImpl(
      null == habitId
          ? _value.habitId
          : habitId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteHabitImpl implements DeleteHabit {
  const _$DeleteHabitImpl(this.habitId);

  @override
  final String habitId;

  @override
  String toString() {
    return 'HabitsEvent.deleteHabit(habitId: $habitId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteHabitImpl &&
            (identical(other.habitId, habitId) || other.habitId == habitId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, habitId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteHabitImplCopyWith<_$DeleteHabitImpl> get copyWith =>
      __$$DeleteHabitImplCopyWithImpl<_$DeleteHabitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String title, String frequency, DateTime time, List<String>? days)
        addHabit,
    required TResult Function(String habitId, String title, String frequency,
            DateTime time, List<String>? days)
        editHabit,
    required TResult Function(String habitId) deleteHabit,
    required TResult Function() fetchHabits,
    required TResult Function(String habitId, DateTime completedDate)
        markHabitAsDone,
    required TResult Function(bool isWeekly) fetchProgress,
    required TResult Function() fetchStatistics,
  }) {
    return deleteHabit(habitId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String title, String frequency, DateTime time, List<String>? days)?
        addHabit,
    TResult? Function(String habitId, String title, String frequency,
            DateTime time, List<String>? days)?
        editHabit,
    TResult? Function(String habitId)? deleteHabit,
    TResult? Function()? fetchHabits,
    TResult? Function(String habitId, DateTime completedDate)? markHabitAsDone,
    TResult? Function(bool isWeekly)? fetchProgress,
    TResult? Function()? fetchStatistics,
  }) {
    return deleteHabit?.call(habitId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String title, String frequency, DateTime time, List<String>? days)?
        addHabit,
    TResult Function(String habitId, String title, String frequency,
            DateTime time, List<String>? days)?
        editHabit,
    TResult Function(String habitId)? deleteHabit,
    TResult Function()? fetchHabits,
    TResult Function(String habitId, DateTime completedDate)? markHabitAsDone,
    TResult Function(bool isWeekly)? fetchProgress,
    TResult Function()? fetchStatistics,
    required TResult orElse(),
  }) {
    if (deleteHabit != null) {
      return deleteHabit(habitId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddHabit value) addHabit,
    required TResult Function(EditHabit value) editHabit,
    required TResult Function(DeleteHabit value) deleteHabit,
    required TResult Function(FetchHabits value) fetchHabits,
    required TResult Function(MarkHabitAsDone value) markHabitAsDone,
    required TResult Function(FetchProgress value) fetchProgress,
    required TResult Function(FetchStatistics value) fetchStatistics,
  }) {
    return deleteHabit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddHabit value)? addHabit,
    TResult? Function(EditHabit value)? editHabit,
    TResult? Function(DeleteHabit value)? deleteHabit,
    TResult? Function(FetchHabits value)? fetchHabits,
    TResult? Function(MarkHabitAsDone value)? markHabitAsDone,
    TResult? Function(FetchProgress value)? fetchProgress,
    TResult? Function(FetchStatistics value)? fetchStatistics,
  }) {
    return deleteHabit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddHabit value)? addHabit,
    TResult Function(EditHabit value)? editHabit,
    TResult Function(DeleteHabit value)? deleteHabit,
    TResult Function(FetchHabits value)? fetchHabits,
    TResult Function(MarkHabitAsDone value)? markHabitAsDone,
    TResult Function(FetchProgress value)? fetchProgress,
    TResult Function(FetchStatistics value)? fetchStatistics,
    required TResult orElse(),
  }) {
    if (deleteHabit != null) {
      return deleteHabit(this);
    }
    return orElse();
  }
}

abstract class DeleteHabit implements HabitsEvent {
  const factory DeleteHabit(final String habitId) = _$DeleteHabitImpl;

  String get habitId;
  @JsonKey(ignore: true)
  _$$DeleteHabitImplCopyWith<_$DeleteHabitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchHabitsImplCopyWith<$Res> {
  factory _$$FetchHabitsImplCopyWith(
          _$FetchHabitsImpl value, $Res Function(_$FetchHabitsImpl) then) =
      __$$FetchHabitsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchHabitsImplCopyWithImpl<$Res>
    extends _$HabitsEventCopyWithImpl<$Res, _$FetchHabitsImpl>
    implements _$$FetchHabitsImplCopyWith<$Res> {
  __$$FetchHabitsImplCopyWithImpl(
      _$FetchHabitsImpl _value, $Res Function(_$FetchHabitsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchHabitsImpl implements FetchHabits {
  const _$FetchHabitsImpl();

  @override
  String toString() {
    return 'HabitsEvent.fetchHabits()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchHabitsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String title, String frequency, DateTime time, List<String>? days)
        addHabit,
    required TResult Function(String habitId, String title, String frequency,
            DateTime time, List<String>? days)
        editHabit,
    required TResult Function(String habitId) deleteHabit,
    required TResult Function() fetchHabits,
    required TResult Function(String habitId, DateTime completedDate)
        markHabitAsDone,
    required TResult Function(bool isWeekly) fetchProgress,
    required TResult Function() fetchStatistics,
  }) {
    return fetchHabits();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String title, String frequency, DateTime time, List<String>? days)?
        addHabit,
    TResult? Function(String habitId, String title, String frequency,
            DateTime time, List<String>? days)?
        editHabit,
    TResult? Function(String habitId)? deleteHabit,
    TResult? Function()? fetchHabits,
    TResult? Function(String habitId, DateTime completedDate)? markHabitAsDone,
    TResult? Function(bool isWeekly)? fetchProgress,
    TResult? Function()? fetchStatistics,
  }) {
    return fetchHabits?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String title, String frequency, DateTime time, List<String>? days)?
        addHabit,
    TResult Function(String habitId, String title, String frequency,
            DateTime time, List<String>? days)?
        editHabit,
    TResult Function(String habitId)? deleteHabit,
    TResult Function()? fetchHabits,
    TResult Function(String habitId, DateTime completedDate)? markHabitAsDone,
    TResult Function(bool isWeekly)? fetchProgress,
    TResult Function()? fetchStatistics,
    required TResult orElse(),
  }) {
    if (fetchHabits != null) {
      return fetchHabits();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddHabit value) addHabit,
    required TResult Function(EditHabit value) editHabit,
    required TResult Function(DeleteHabit value) deleteHabit,
    required TResult Function(FetchHabits value) fetchHabits,
    required TResult Function(MarkHabitAsDone value) markHabitAsDone,
    required TResult Function(FetchProgress value) fetchProgress,
    required TResult Function(FetchStatistics value) fetchStatistics,
  }) {
    return fetchHabits(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddHabit value)? addHabit,
    TResult? Function(EditHabit value)? editHabit,
    TResult? Function(DeleteHabit value)? deleteHabit,
    TResult? Function(FetchHabits value)? fetchHabits,
    TResult? Function(MarkHabitAsDone value)? markHabitAsDone,
    TResult? Function(FetchProgress value)? fetchProgress,
    TResult? Function(FetchStatistics value)? fetchStatistics,
  }) {
    return fetchHabits?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddHabit value)? addHabit,
    TResult Function(EditHabit value)? editHabit,
    TResult Function(DeleteHabit value)? deleteHabit,
    TResult Function(FetchHabits value)? fetchHabits,
    TResult Function(MarkHabitAsDone value)? markHabitAsDone,
    TResult Function(FetchProgress value)? fetchProgress,
    TResult Function(FetchStatistics value)? fetchStatistics,
    required TResult orElse(),
  }) {
    if (fetchHabits != null) {
      return fetchHabits(this);
    }
    return orElse();
  }
}

abstract class FetchHabits implements HabitsEvent {
  const factory FetchHabits() = _$FetchHabitsImpl;
}

/// @nodoc
abstract class _$$MarkHabitAsDoneImplCopyWith<$Res> {
  factory _$$MarkHabitAsDoneImplCopyWith(_$MarkHabitAsDoneImpl value,
          $Res Function(_$MarkHabitAsDoneImpl) then) =
      __$$MarkHabitAsDoneImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String habitId, DateTime completedDate});
}

/// @nodoc
class __$$MarkHabitAsDoneImplCopyWithImpl<$Res>
    extends _$HabitsEventCopyWithImpl<$Res, _$MarkHabitAsDoneImpl>
    implements _$$MarkHabitAsDoneImplCopyWith<$Res> {
  __$$MarkHabitAsDoneImplCopyWithImpl(
      _$MarkHabitAsDoneImpl _value, $Res Function(_$MarkHabitAsDoneImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? habitId = null,
    Object? completedDate = null,
  }) {
    return _then(_$MarkHabitAsDoneImpl(
      habitId: null == habitId
          ? _value.habitId
          : habitId // ignore: cast_nullable_to_non_nullable
              as String,
      completedDate: null == completedDate
          ? _value.completedDate
          : completedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$MarkHabitAsDoneImpl implements MarkHabitAsDone {
  const _$MarkHabitAsDoneImpl(
      {required this.habitId, required this.completedDate});

  @override
  final String habitId;
  @override
  final DateTime completedDate;

  @override
  String toString() {
    return 'HabitsEvent.markHabitAsDone(habitId: $habitId, completedDate: $completedDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkHabitAsDoneImpl &&
            (identical(other.habitId, habitId) || other.habitId == habitId) &&
            (identical(other.completedDate, completedDate) ||
                other.completedDate == completedDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, habitId, completedDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkHabitAsDoneImplCopyWith<_$MarkHabitAsDoneImpl> get copyWith =>
      __$$MarkHabitAsDoneImplCopyWithImpl<_$MarkHabitAsDoneImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String title, String frequency, DateTime time, List<String>? days)
        addHabit,
    required TResult Function(String habitId, String title, String frequency,
            DateTime time, List<String>? days)
        editHabit,
    required TResult Function(String habitId) deleteHabit,
    required TResult Function() fetchHabits,
    required TResult Function(String habitId, DateTime completedDate)
        markHabitAsDone,
    required TResult Function(bool isWeekly) fetchProgress,
    required TResult Function() fetchStatistics,
  }) {
    return markHabitAsDone(habitId, completedDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String title, String frequency, DateTime time, List<String>? days)?
        addHabit,
    TResult? Function(String habitId, String title, String frequency,
            DateTime time, List<String>? days)?
        editHabit,
    TResult? Function(String habitId)? deleteHabit,
    TResult? Function()? fetchHabits,
    TResult? Function(String habitId, DateTime completedDate)? markHabitAsDone,
    TResult? Function(bool isWeekly)? fetchProgress,
    TResult? Function()? fetchStatistics,
  }) {
    return markHabitAsDone?.call(habitId, completedDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String title, String frequency, DateTime time, List<String>? days)?
        addHabit,
    TResult Function(String habitId, String title, String frequency,
            DateTime time, List<String>? days)?
        editHabit,
    TResult Function(String habitId)? deleteHabit,
    TResult Function()? fetchHabits,
    TResult Function(String habitId, DateTime completedDate)? markHabitAsDone,
    TResult Function(bool isWeekly)? fetchProgress,
    TResult Function()? fetchStatistics,
    required TResult orElse(),
  }) {
    if (markHabitAsDone != null) {
      return markHabitAsDone(habitId, completedDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddHabit value) addHabit,
    required TResult Function(EditHabit value) editHabit,
    required TResult Function(DeleteHabit value) deleteHabit,
    required TResult Function(FetchHabits value) fetchHabits,
    required TResult Function(MarkHabitAsDone value) markHabitAsDone,
    required TResult Function(FetchProgress value) fetchProgress,
    required TResult Function(FetchStatistics value) fetchStatistics,
  }) {
    return markHabitAsDone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddHabit value)? addHabit,
    TResult? Function(EditHabit value)? editHabit,
    TResult? Function(DeleteHabit value)? deleteHabit,
    TResult? Function(FetchHabits value)? fetchHabits,
    TResult? Function(MarkHabitAsDone value)? markHabitAsDone,
    TResult? Function(FetchProgress value)? fetchProgress,
    TResult? Function(FetchStatistics value)? fetchStatistics,
  }) {
    return markHabitAsDone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddHabit value)? addHabit,
    TResult Function(EditHabit value)? editHabit,
    TResult Function(DeleteHabit value)? deleteHabit,
    TResult Function(FetchHabits value)? fetchHabits,
    TResult Function(MarkHabitAsDone value)? markHabitAsDone,
    TResult Function(FetchProgress value)? fetchProgress,
    TResult Function(FetchStatistics value)? fetchStatistics,
    required TResult orElse(),
  }) {
    if (markHabitAsDone != null) {
      return markHabitAsDone(this);
    }
    return orElse();
  }
}

abstract class MarkHabitAsDone implements HabitsEvent {
  const factory MarkHabitAsDone(
      {required final String habitId,
      required final DateTime completedDate}) = _$MarkHabitAsDoneImpl;

  String get habitId;
  DateTime get completedDate;
  @JsonKey(ignore: true)
  _$$MarkHabitAsDoneImplCopyWith<_$MarkHabitAsDoneImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchProgressImplCopyWith<$Res> {
  factory _$$FetchProgressImplCopyWith(
          _$FetchProgressImpl value, $Res Function(_$FetchProgressImpl) then) =
      __$$FetchProgressImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isWeekly});
}

/// @nodoc
class __$$FetchProgressImplCopyWithImpl<$Res>
    extends _$HabitsEventCopyWithImpl<$Res, _$FetchProgressImpl>
    implements _$$FetchProgressImplCopyWith<$Res> {
  __$$FetchProgressImplCopyWithImpl(
      _$FetchProgressImpl _value, $Res Function(_$FetchProgressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isWeekly = null,
  }) {
    return _then(_$FetchProgressImpl(
      isWeekly: null == isWeekly
          ? _value.isWeekly
          : isWeekly // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FetchProgressImpl implements FetchProgress {
  const _$FetchProgressImpl({required this.isWeekly});

  @override
  final bool isWeekly;

  @override
  String toString() {
    return 'HabitsEvent.fetchProgress(isWeekly: $isWeekly)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchProgressImpl &&
            (identical(other.isWeekly, isWeekly) ||
                other.isWeekly == isWeekly));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isWeekly);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchProgressImplCopyWith<_$FetchProgressImpl> get copyWith =>
      __$$FetchProgressImplCopyWithImpl<_$FetchProgressImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String title, String frequency, DateTime time, List<String>? days)
        addHabit,
    required TResult Function(String habitId, String title, String frequency,
            DateTime time, List<String>? days)
        editHabit,
    required TResult Function(String habitId) deleteHabit,
    required TResult Function() fetchHabits,
    required TResult Function(String habitId, DateTime completedDate)
        markHabitAsDone,
    required TResult Function(bool isWeekly) fetchProgress,
    required TResult Function() fetchStatistics,
  }) {
    return fetchProgress(isWeekly);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String title, String frequency, DateTime time, List<String>? days)?
        addHabit,
    TResult? Function(String habitId, String title, String frequency,
            DateTime time, List<String>? days)?
        editHabit,
    TResult? Function(String habitId)? deleteHabit,
    TResult? Function()? fetchHabits,
    TResult? Function(String habitId, DateTime completedDate)? markHabitAsDone,
    TResult? Function(bool isWeekly)? fetchProgress,
    TResult? Function()? fetchStatistics,
  }) {
    return fetchProgress?.call(isWeekly);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String title, String frequency, DateTime time, List<String>? days)?
        addHabit,
    TResult Function(String habitId, String title, String frequency,
            DateTime time, List<String>? days)?
        editHabit,
    TResult Function(String habitId)? deleteHabit,
    TResult Function()? fetchHabits,
    TResult Function(String habitId, DateTime completedDate)? markHabitAsDone,
    TResult Function(bool isWeekly)? fetchProgress,
    TResult Function()? fetchStatistics,
    required TResult orElse(),
  }) {
    if (fetchProgress != null) {
      return fetchProgress(isWeekly);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddHabit value) addHabit,
    required TResult Function(EditHabit value) editHabit,
    required TResult Function(DeleteHabit value) deleteHabit,
    required TResult Function(FetchHabits value) fetchHabits,
    required TResult Function(MarkHabitAsDone value) markHabitAsDone,
    required TResult Function(FetchProgress value) fetchProgress,
    required TResult Function(FetchStatistics value) fetchStatistics,
  }) {
    return fetchProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddHabit value)? addHabit,
    TResult? Function(EditHabit value)? editHabit,
    TResult? Function(DeleteHabit value)? deleteHabit,
    TResult? Function(FetchHabits value)? fetchHabits,
    TResult? Function(MarkHabitAsDone value)? markHabitAsDone,
    TResult? Function(FetchProgress value)? fetchProgress,
    TResult? Function(FetchStatistics value)? fetchStatistics,
  }) {
    return fetchProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddHabit value)? addHabit,
    TResult Function(EditHabit value)? editHabit,
    TResult Function(DeleteHabit value)? deleteHabit,
    TResult Function(FetchHabits value)? fetchHabits,
    TResult Function(MarkHabitAsDone value)? markHabitAsDone,
    TResult Function(FetchProgress value)? fetchProgress,
    TResult Function(FetchStatistics value)? fetchStatistics,
    required TResult orElse(),
  }) {
    if (fetchProgress != null) {
      return fetchProgress(this);
    }
    return orElse();
  }
}

abstract class FetchProgress implements HabitsEvent {
  const factory FetchProgress({required final bool isWeekly}) =
      _$FetchProgressImpl;

  bool get isWeekly;
  @JsonKey(ignore: true)
  _$$FetchProgressImplCopyWith<_$FetchProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchStatisticsImplCopyWith<$Res> {
  factory _$$FetchStatisticsImplCopyWith(_$FetchStatisticsImpl value,
          $Res Function(_$FetchStatisticsImpl) then) =
      __$$FetchStatisticsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchStatisticsImplCopyWithImpl<$Res>
    extends _$HabitsEventCopyWithImpl<$Res, _$FetchStatisticsImpl>
    implements _$$FetchStatisticsImplCopyWith<$Res> {
  __$$FetchStatisticsImplCopyWithImpl(
      _$FetchStatisticsImpl _value, $Res Function(_$FetchStatisticsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchStatisticsImpl implements FetchStatistics {
  const _$FetchStatisticsImpl();

  @override
  String toString() {
    return 'HabitsEvent.fetchStatistics()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchStatisticsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String title, String frequency, DateTime time, List<String>? days)
        addHabit,
    required TResult Function(String habitId, String title, String frequency,
            DateTime time, List<String>? days)
        editHabit,
    required TResult Function(String habitId) deleteHabit,
    required TResult Function() fetchHabits,
    required TResult Function(String habitId, DateTime completedDate)
        markHabitAsDone,
    required TResult Function(bool isWeekly) fetchProgress,
    required TResult Function() fetchStatistics,
  }) {
    return fetchStatistics();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String title, String frequency, DateTime time, List<String>? days)?
        addHabit,
    TResult? Function(String habitId, String title, String frequency,
            DateTime time, List<String>? days)?
        editHabit,
    TResult? Function(String habitId)? deleteHabit,
    TResult? Function()? fetchHabits,
    TResult? Function(String habitId, DateTime completedDate)? markHabitAsDone,
    TResult? Function(bool isWeekly)? fetchProgress,
    TResult? Function()? fetchStatistics,
  }) {
    return fetchStatistics?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String title, String frequency, DateTime time, List<String>? days)?
        addHabit,
    TResult Function(String habitId, String title, String frequency,
            DateTime time, List<String>? days)?
        editHabit,
    TResult Function(String habitId)? deleteHabit,
    TResult Function()? fetchHabits,
    TResult Function(String habitId, DateTime completedDate)? markHabitAsDone,
    TResult Function(bool isWeekly)? fetchProgress,
    TResult Function()? fetchStatistics,
    required TResult orElse(),
  }) {
    if (fetchStatistics != null) {
      return fetchStatistics();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddHabit value) addHabit,
    required TResult Function(EditHabit value) editHabit,
    required TResult Function(DeleteHabit value) deleteHabit,
    required TResult Function(FetchHabits value) fetchHabits,
    required TResult Function(MarkHabitAsDone value) markHabitAsDone,
    required TResult Function(FetchProgress value) fetchProgress,
    required TResult Function(FetchStatistics value) fetchStatistics,
  }) {
    return fetchStatistics(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddHabit value)? addHabit,
    TResult? Function(EditHabit value)? editHabit,
    TResult? Function(DeleteHabit value)? deleteHabit,
    TResult? Function(FetchHabits value)? fetchHabits,
    TResult? Function(MarkHabitAsDone value)? markHabitAsDone,
    TResult? Function(FetchProgress value)? fetchProgress,
    TResult? Function(FetchStatistics value)? fetchStatistics,
  }) {
    return fetchStatistics?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddHabit value)? addHabit,
    TResult Function(EditHabit value)? editHabit,
    TResult Function(DeleteHabit value)? deleteHabit,
    TResult Function(FetchHabits value)? fetchHabits,
    TResult Function(MarkHabitAsDone value)? markHabitAsDone,
    TResult Function(FetchProgress value)? fetchProgress,
    TResult Function(FetchStatistics value)? fetchStatistics,
    required TResult orElse(),
  }) {
    if (fetchStatistics != null) {
      return fetchStatistics(this);
    }
    return orElse();
  }
}

abstract class FetchStatistics implements HabitsEvent {
  const factory FetchStatistics() = _$FetchStatisticsImpl;
}

/// @nodoc
mixin _$HabitsState {
  ProcessingStatus get processingStatus => throw _privateConstructorUsedError;
  CustomError get error => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get habitsList =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> get progress => throw _privateConstructorUsedError;
  List<String> get labels => throw _privateConstructorUsedError;
  Map<String, dynamic> get statistics => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HabitsStateCopyWith<HabitsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitsStateCopyWith<$Res> {
  factory $HabitsStateCopyWith(
          HabitsState value, $Res Function(HabitsState) then) =
      _$HabitsStateCopyWithImpl<$Res, HabitsState>;
  @useResult
  $Res call(
      {ProcessingStatus processingStatus,
      CustomError error,
      List<Map<String, dynamic>> habitsList,
      Map<String, dynamic> progress,
      List<String> labels,
      Map<String, dynamic> statistics});
}

/// @nodoc
class _$HabitsStateCopyWithImpl<$Res, $Val extends HabitsState>
    implements $HabitsStateCopyWith<$Res> {
  _$HabitsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? processingStatus = null,
    Object? error = null,
    Object? habitsList = null,
    Object? progress = null,
    Object? labels = null,
    Object? statistics = null,
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
      habitsList: null == habitsList
          ? _value.habitsList
          : habitsList // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      labels: null == labels
          ? _value.labels
          : labels // ignore: cast_nullable_to_non_nullable
              as List<String>,
      statistics: null == statistics
          ? _value.statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HabitsStateImplCopyWith<$Res>
    implements $HabitsStateCopyWith<$Res> {
  factory _$$HabitsStateImplCopyWith(
          _$HabitsStateImpl value, $Res Function(_$HabitsStateImpl) then) =
      __$$HabitsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProcessingStatus processingStatus,
      CustomError error,
      List<Map<String, dynamic>> habitsList,
      Map<String, dynamic> progress,
      List<String> labels,
      Map<String, dynamic> statistics});
}

/// @nodoc
class __$$HabitsStateImplCopyWithImpl<$Res>
    extends _$HabitsStateCopyWithImpl<$Res, _$HabitsStateImpl>
    implements _$$HabitsStateImplCopyWith<$Res> {
  __$$HabitsStateImplCopyWithImpl(
      _$HabitsStateImpl _value, $Res Function(_$HabitsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? processingStatus = null,
    Object? error = null,
    Object? habitsList = null,
    Object? progress = null,
    Object? labels = null,
    Object? statistics = null,
  }) {
    return _then(_$HabitsStateImpl(
      processingStatus: null == processingStatus
          ? _value.processingStatus
          : processingStatus // ignore: cast_nullable_to_non_nullable
              as ProcessingStatus,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as CustomError,
      habitsList: null == habitsList
          ? _value._habitsList
          : habitsList // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      progress: null == progress
          ? _value._progress
          : progress // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      labels: null == labels
          ? _value._labels
          : labels // ignore: cast_nullable_to_non_nullable
              as List<String>,
      statistics: null == statistics
          ? _value._statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$HabitsStateImpl implements _HabitsState {
  const _$HabitsStateImpl(
      {required this.processingStatus,
      required this.error,
      required final List<Map<String, dynamic>> habitsList,
      required final Map<String, dynamic> progress,
      required final List<String> labels,
      required final Map<String, dynamic> statistics})
      : _habitsList = habitsList,
        _progress = progress,
        _labels = labels,
        _statistics = statistics;

  @override
  final ProcessingStatus processingStatus;
  @override
  final CustomError error;
  final List<Map<String, dynamic>> _habitsList;
  @override
  List<Map<String, dynamic>> get habitsList {
    if (_habitsList is EqualUnmodifiableListView) return _habitsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_habitsList);
  }

  final Map<String, dynamic> _progress;
  @override
  Map<String, dynamic> get progress {
    if (_progress is EqualUnmodifiableMapView) return _progress;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_progress);
  }

  final List<String> _labels;
  @override
  List<String> get labels {
    if (_labels is EqualUnmodifiableListView) return _labels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_labels);
  }

  final Map<String, dynamic> _statistics;
  @override
  Map<String, dynamic> get statistics {
    if (_statistics is EqualUnmodifiableMapView) return _statistics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_statistics);
  }

  @override
  String toString() {
    return 'HabitsState(processingStatus: $processingStatus, error: $error, habitsList: $habitsList, progress: $progress, labels: $labels, statistics: $statistics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HabitsStateImpl &&
            (identical(other.processingStatus, processingStatus) ||
                other.processingStatus == processingStatus) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality()
                .equals(other._habitsList, _habitsList) &&
            const DeepCollectionEquality().equals(other._progress, _progress) &&
            const DeepCollectionEquality().equals(other._labels, _labels) &&
            const DeepCollectionEquality()
                .equals(other._statistics, _statistics));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      processingStatus,
      error,
      const DeepCollectionEquality().hash(_habitsList),
      const DeepCollectionEquality().hash(_progress),
      const DeepCollectionEquality().hash(_labels),
      const DeepCollectionEquality().hash(_statistics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HabitsStateImplCopyWith<_$HabitsStateImpl> get copyWith =>
      __$$HabitsStateImplCopyWithImpl<_$HabitsStateImpl>(this, _$identity);
}

abstract class _HabitsState implements HabitsState {
  const factory _HabitsState(
      {required final ProcessingStatus processingStatus,
      required final CustomError error,
      required final List<Map<String, dynamic>> habitsList,
      required final Map<String, dynamic> progress,
      required final List<String> labels,
      required final Map<String, dynamic> statistics}) = _$HabitsStateImpl;

  @override
  ProcessingStatus get processingStatus;
  @override
  CustomError get error;
  @override
  List<Map<String, dynamic>> get habitsList;
  @override
  Map<String, dynamic> get progress;
  @override
  List<String> get labels;
  @override
  Map<String, dynamic> get statistics;
  @override
  @JsonKey(ignore: true)
  _$$HabitsStateImplCopyWith<_$HabitsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
