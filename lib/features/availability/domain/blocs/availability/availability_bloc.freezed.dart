// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'availability_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AvailabilityEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailabilityEventCopyWith<$Res> {
  factory $AvailabilityEventCopyWith(
          AvailabilityEvent value, $Res Function(AvailabilityEvent) then) =
      _$AvailabilityEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AvailabilityEventCopyWithImpl<$Res>
    implements $AvailabilityEventCopyWith<$Res> {
  _$AvailabilityEventCopyWithImpl(this._value, this._then);

  final AvailabilityEvent _value;
  // ignore: unused_field
  final $Res Function(AvailabilityEvent) _then;
}

/// @nodoc
abstract class _$$_FetchCopyWith<$Res> {
  factory _$$_FetchCopyWith(_$_Fetch value, $Res Function(_$_Fetch) then) =
      __$$_FetchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchCopyWithImpl<$Res> extends _$AvailabilityEventCopyWithImpl<$Res>
    implements _$$_FetchCopyWith<$Res> {
  __$$_FetchCopyWithImpl(_$_Fetch _value, $Res Function(_$_Fetch) _then)
      : super(_value, (v) => _then(v as _$_Fetch));

  @override
  _$_Fetch get _value => super._value as _$_Fetch;
}

/// @nodoc

class _$_Fetch implements _Fetch {
  const _$_Fetch();

  @override
  String toString() {
    return 'AvailabilityEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Fetch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements AvailabilityEvent {
  const factory _Fetch() = _$_Fetch;
}

/// @nodoc
mixin _$AvailabilityState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Day> week) success,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Day> week)? success,
    TResult Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Day> week)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AvailabilityStateInitial value) initial,
    required TResult Function(AvailabilityStateSuccess value) success,
    required TResult Function(AvailabilityStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AvailabilityStateInitial value)? initial,
    TResult Function(AvailabilityStateSuccess value)? success,
    TResult Function(AvailabilityStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AvailabilityStateInitial value)? initial,
    TResult Function(AvailabilityStateSuccess value)? success,
    TResult Function(AvailabilityStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailabilityStateCopyWith<$Res> {
  factory $AvailabilityStateCopyWith(
          AvailabilityState value, $Res Function(AvailabilityState) then) =
      _$AvailabilityStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AvailabilityStateCopyWithImpl<$Res>
    implements $AvailabilityStateCopyWith<$Res> {
  _$AvailabilityStateCopyWithImpl(this._value, this._then);

  final AvailabilityState _value;
  // ignore: unused_field
  final $Res Function(AvailabilityState) _then;
}

/// @nodoc
abstract class _$$AvailabilityStateInitialCopyWith<$Res> {
  factory _$$AvailabilityStateInitialCopyWith(_$AvailabilityStateInitial value,
          $Res Function(_$AvailabilityStateInitial) then) =
      __$$AvailabilityStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AvailabilityStateInitialCopyWithImpl<$Res>
    extends _$AvailabilityStateCopyWithImpl<$Res>
    implements _$$AvailabilityStateInitialCopyWith<$Res> {
  __$$AvailabilityStateInitialCopyWithImpl(_$AvailabilityStateInitial _value,
      $Res Function(_$AvailabilityStateInitial) _then)
      : super(_value, (v) => _then(v as _$AvailabilityStateInitial));

  @override
  _$AvailabilityStateInitial get _value =>
      super._value as _$AvailabilityStateInitial;
}

/// @nodoc

class _$AvailabilityStateInitial implements AvailabilityStateInitial {
  const _$AvailabilityStateInitial();

  @override
  String toString() {
    return 'AvailabilityState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailabilityStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Day> week) success,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Day> week)? success,
    TResult Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Day> week)? success,
    TResult Function(String message)? failure,
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
    required TResult Function(AvailabilityStateInitial value) initial,
    required TResult Function(AvailabilityStateSuccess value) success,
    required TResult Function(AvailabilityStateFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AvailabilityStateInitial value)? initial,
    TResult Function(AvailabilityStateSuccess value)? success,
    TResult Function(AvailabilityStateFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AvailabilityStateInitial value)? initial,
    TResult Function(AvailabilityStateSuccess value)? success,
    TResult Function(AvailabilityStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AvailabilityStateInitial implements AvailabilityState {
  const factory AvailabilityStateInitial() = _$AvailabilityStateInitial;
}

/// @nodoc
abstract class _$$AvailabilityStateSuccessCopyWith<$Res> {
  factory _$$AvailabilityStateSuccessCopyWith(_$AvailabilityStateSuccess value,
          $Res Function(_$AvailabilityStateSuccess) then) =
      __$$AvailabilityStateSuccessCopyWithImpl<$Res>;
  $Res call({List<Day> week});
}

/// @nodoc
class __$$AvailabilityStateSuccessCopyWithImpl<$Res>
    extends _$AvailabilityStateCopyWithImpl<$Res>
    implements _$$AvailabilityStateSuccessCopyWith<$Res> {
  __$$AvailabilityStateSuccessCopyWithImpl(_$AvailabilityStateSuccess _value,
      $Res Function(_$AvailabilityStateSuccess) _then)
      : super(_value, (v) => _then(v as _$AvailabilityStateSuccess));

  @override
  _$AvailabilityStateSuccess get _value =>
      super._value as _$AvailabilityStateSuccess;

  @override
  $Res call({
    Object? week = freezed,
  }) {
    return _then(_$AvailabilityStateSuccess(
      week: week == freezed
          ? _value._week
          : week // ignore: cast_nullable_to_non_nullable
              as List<Day>,
    ));
  }
}

/// @nodoc

class _$AvailabilityStateSuccess implements AvailabilityStateSuccess {
  const _$AvailabilityStateSuccess({required final List<Day> week})
      : _week = week;

  final List<Day> _week;
  @override
  List<Day> get week {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_week);
  }

  @override
  String toString() {
    return 'AvailabilityState.success(week: $week)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailabilityStateSuccess &&
            const DeepCollectionEquality().equals(other._week, _week));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_week));

  @JsonKey(ignore: true)
  @override
  _$$AvailabilityStateSuccessCopyWith<_$AvailabilityStateSuccess>
      get copyWith =>
          __$$AvailabilityStateSuccessCopyWithImpl<_$AvailabilityStateSuccess>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Day> week) success,
    required TResult Function(String message) failure,
  }) {
    return success(week);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Day> week)? success,
    TResult Function(String message)? failure,
  }) {
    return success?.call(week);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Day> week)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(week);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AvailabilityStateInitial value) initial,
    required TResult Function(AvailabilityStateSuccess value) success,
    required TResult Function(AvailabilityStateFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AvailabilityStateInitial value)? initial,
    TResult Function(AvailabilityStateSuccess value)? success,
    TResult Function(AvailabilityStateFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AvailabilityStateInitial value)? initial,
    TResult Function(AvailabilityStateSuccess value)? success,
    TResult Function(AvailabilityStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class AvailabilityStateSuccess implements AvailabilityState {
  const factory AvailabilityStateSuccess({required final List<Day> week}) =
      _$AvailabilityStateSuccess;

  List<Day> get week => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$AvailabilityStateSuccessCopyWith<_$AvailabilityStateSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AvailabilityStateFailureCopyWith<$Res> {
  factory _$$AvailabilityStateFailureCopyWith(_$AvailabilityStateFailure value,
          $Res Function(_$AvailabilityStateFailure) then) =
      __$$AvailabilityStateFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$AvailabilityStateFailureCopyWithImpl<$Res>
    extends _$AvailabilityStateCopyWithImpl<$Res>
    implements _$$AvailabilityStateFailureCopyWith<$Res> {
  __$$AvailabilityStateFailureCopyWithImpl(_$AvailabilityStateFailure _value,
      $Res Function(_$AvailabilityStateFailure) _then)
      : super(_value, (v) => _then(v as _$AvailabilityStateFailure));

  @override
  _$AvailabilityStateFailure get _value =>
      super._value as _$AvailabilityStateFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$AvailabilityStateFailure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AvailabilityStateFailure implements AvailabilityStateFailure {
  const _$AvailabilityStateFailure({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AvailabilityState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailabilityStateFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$AvailabilityStateFailureCopyWith<_$AvailabilityStateFailure>
      get copyWith =>
          __$$AvailabilityStateFailureCopyWithImpl<_$AvailabilityStateFailure>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Day> week) success,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Day> week)? success,
    TResult Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Day> week)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AvailabilityStateInitial value) initial,
    required TResult Function(AvailabilityStateSuccess value) success,
    required TResult Function(AvailabilityStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AvailabilityStateInitial value)? initial,
    TResult Function(AvailabilityStateSuccess value)? success,
    TResult Function(AvailabilityStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AvailabilityStateInitial value)? initial,
    TResult Function(AvailabilityStateSuccess value)? success,
    TResult Function(AvailabilityStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class AvailabilityStateFailure implements AvailabilityState {
  const factory AvailabilityStateFailure({required final String message}) =
      _$AvailabilityStateFailure;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$AvailabilityStateFailureCopyWith<_$AvailabilityStateFailure>
      get copyWith => throw _privateConstructorUsedError;
}
