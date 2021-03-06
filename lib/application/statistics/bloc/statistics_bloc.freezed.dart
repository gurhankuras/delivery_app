// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'statistics_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StatisticsEventTearOff {
  const _$StatisticsEventTearOff();

  FetchingStarted fetchingStarted(
      {required Stat stat, required DateTime date}) {
    return FetchingStarted(
      stat: stat,
      date: date,
    );
  }
}

/// @nodoc
const $StatisticsEvent = _$StatisticsEventTearOff();

/// @nodoc
mixin _$StatisticsEvent {
  Stat get stat => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Stat stat, DateTime date) fetchingStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Stat stat, DateTime date)? fetchingStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchingStarted value) fetchingStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchingStarted value)? fetchingStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StatisticsEventCopyWith<StatisticsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticsEventCopyWith<$Res> {
  factory $StatisticsEventCopyWith(
          StatisticsEvent value, $Res Function(StatisticsEvent) then) =
      _$StatisticsEventCopyWithImpl<$Res>;
  $Res call({Stat stat, DateTime date});
}

/// @nodoc
class _$StatisticsEventCopyWithImpl<$Res>
    implements $StatisticsEventCopyWith<$Res> {
  _$StatisticsEventCopyWithImpl(this._value, this._then);

  final StatisticsEvent _value;
  // ignore: unused_field
  final $Res Function(StatisticsEvent) _then;

  @override
  $Res call({
    Object? stat = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      stat: stat == freezed
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as Stat,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class $FetchingStartedCopyWith<$Res>
    implements $StatisticsEventCopyWith<$Res> {
  factory $FetchingStartedCopyWith(
          FetchingStarted value, $Res Function(FetchingStarted) then) =
      _$FetchingStartedCopyWithImpl<$Res>;
  @override
  $Res call({Stat stat, DateTime date});
}

/// @nodoc
class _$FetchingStartedCopyWithImpl<$Res>
    extends _$StatisticsEventCopyWithImpl<$Res>
    implements $FetchingStartedCopyWith<$Res> {
  _$FetchingStartedCopyWithImpl(
      FetchingStarted _value, $Res Function(FetchingStarted) _then)
      : super(_value, (v) => _then(v as FetchingStarted));

  @override
  FetchingStarted get _value => super._value as FetchingStarted;

  @override
  $Res call({
    Object? stat = freezed,
    Object? date = freezed,
  }) {
    return _then(FetchingStarted(
      stat: stat == freezed
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as Stat,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$FetchingStarted implements FetchingStarted {
  const _$FetchingStarted({required this.stat, required this.date});

  @override
  final Stat stat;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'StatisticsEvent.fetchingStarted(stat: $stat, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchingStarted &&
            (identical(other.stat, stat) ||
                const DeepCollectionEquality().equals(other.stat, stat)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(stat) ^
      const DeepCollectionEquality().hash(date);

  @JsonKey(ignore: true)
  @override
  $FetchingStartedCopyWith<FetchingStarted> get copyWith =>
      _$FetchingStartedCopyWithImpl<FetchingStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Stat stat, DateTime date) fetchingStarted,
  }) {
    return fetchingStarted(stat, date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Stat stat, DateTime date)? fetchingStarted,
    required TResult orElse(),
  }) {
    if (fetchingStarted != null) {
      return fetchingStarted(stat, date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchingStarted value) fetchingStarted,
  }) {
    return fetchingStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchingStarted value)? fetchingStarted,
    required TResult orElse(),
  }) {
    if (fetchingStarted != null) {
      return fetchingStarted(this);
    }
    return orElse();
  }
}

abstract class FetchingStarted implements StatisticsEvent {
  const factory FetchingStarted({required Stat stat, required DateTime date}) =
      _$FetchingStarted;

  @override
  Stat get stat => throw _privateConstructorUsedError;
  @override
  DateTime get date => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $FetchingStartedCopyWith<FetchingStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$StatisticsStateTearOff {
  const _$StatisticsStateTearOff();

  Initial initial({required DateTime lastPickedDate}) {
    return Initial(
      lastPickedDate: lastPickedDate,
    );
  }

  Loading loading({required DateTime lastPickedDate}) {
    return Loading(
      lastPickedDate: lastPickedDate,
    );
  }

  LoadSuccess loadSuccess(
      {required Statistics stat, required DateTime lastPickedDate}) {
    return LoadSuccess(
      stat: stat,
      lastPickedDate: lastPickedDate,
    );
  }

  LoadFailure loadFailure(
      {required StatisticsFailure failure, required DateTime lastPickedDate}) {
    return LoadFailure(
      failure: failure,
      lastPickedDate: lastPickedDate,
    );
  }
}

/// @nodoc
const $StatisticsState = _$StatisticsStateTearOff();

/// @nodoc
mixin _$StatisticsState {
  DateTime get lastPickedDate => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime lastPickedDate) initial,
    required TResult Function(DateTime lastPickedDate) loading,
    required TResult Function(Statistics stat, DateTime lastPickedDate)
        loadSuccess,
    required TResult Function(
            StatisticsFailure failure, DateTime lastPickedDate)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime lastPickedDate)? initial,
    TResult Function(DateTime lastPickedDate)? loading,
    TResult Function(Statistics stat, DateTime lastPickedDate)? loadSuccess,
    TResult Function(StatisticsFailure failure, DateTime lastPickedDate)?
        loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StatisticsStateCopyWith<StatisticsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticsStateCopyWith<$Res> {
  factory $StatisticsStateCopyWith(
          StatisticsState value, $Res Function(StatisticsState) then) =
      _$StatisticsStateCopyWithImpl<$Res>;
  $Res call({DateTime lastPickedDate});
}

/// @nodoc
class _$StatisticsStateCopyWithImpl<$Res>
    implements $StatisticsStateCopyWith<$Res> {
  _$StatisticsStateCopyWithImpl(this._value, this._then);

  final StatisticsState _value;
  // ignore: unused_field
  final $Res Function(StatisticsState) _then;

  @override
  $Res call({
    Object? lastPickedDate = freezed,
  }) {
    return _then(_value.copyWith(
      lastPickedDate: lastPickedDate == freezed
          ? _value.lastPickedDate
          : lastPickedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class $InitialCopyWith<$Res>
    implements $StatisticsStateCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  @override
  $Res call({DateTime lastPickedDate});
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$StatisticsStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;

  @override
  $Res call({
    Object? lastPickedDate = freezed,
  }) {
    return _then(Initial(
      lastPickedDate: lastPickedDate == freezed
          ? _value.lastPickedDate
          : lastPickedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({required this.lastPickedDate});

  @override
  final DateTime lastPickedDate;

  @override
  String toString() {
    return 'StatisticsState.initial(lastPickedDate: $lastPickedDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Initial &&
            (identical(other.lastPickedDate, lastPickedDate) ||
                const DeepCollectionEquality()
                    .equals(other.lastPickedDate, lastPickedDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(lastPickedDate);

  @JsonKey(ignore: true)
  @override
  $InitialCopyWith<Initial> get copyWith =>
      _$InitialCopyWithImpl<Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime lastPickedDate) initial,
    required TResult Function(DateTime lastPickedDate) loading,
    required TResult Function(Statistics stat, DateTime lastPickedDate)
        loadSuccess,
    required TResult Function(
            StatisticsFailure failure, DateTime lastPickedDate)
        loadFailure,
  }) {
    return initial(lastPickedDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime lastPickedDate)? initial,
    TResult Function(DateTime lastPickedDate)? loading,
    TResult Function(Statistics stat, DateTime lastPickedDate)? loadSuccess,
    TResult Function(StatisticsFailure failure, DateTime lastPickedDate)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(lastPickedDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements StatisticsState {
  const factory Initial({required DateTime lastPickedDate}) = _$Initial;

  @override
  DateTime get lastPickedDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InitialCopyWith<Initial> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res>
    implements $StatisticsStateCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({DateTime lastPickedDate});
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$StatisticsStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;

  @override
  $Res call({
    Object? lastPickedDate = freezed,
  }) {
    return _then(Loading(
      lastPickedDate: lastPickedDate == freezed
          ? _value.lastPickedDate
          : lastPickedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading({required this.lastPickedDate});

  @override
  final DateTime lastPickedDate;

  @override
  String toString() {
    return 'StatisticsState.loading(lastPickedDate: $lastPickedDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loading &&
            (identical(other.lastPickedDate, lastPickedDate) ||
                const DeepCollectionEquality()
                    .equals(other.lastPickedDate, lastPickedDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(lastPickedDate);

  @JsonKey(ignore: true)
  @override
  $LoadingCopyWith<Loading> get copyWith =>
      _$LoadingCopyWithImpl<Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime lastPickedDate) initial,
    required TResult Function(DateTime lastPickedDate) loading,
    required TResult Function(Statistics stat, DateTime lastPickedDate)
        loadSuccess,
    required TResult Function(
            StatisticsFailure failure, DateTime lastPickedDate)
        loadFailure,
  }) {
    return loading(lastPickedDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime lastPickedDate)? initial,
    TResult Function(DateTime lastPickedDate)? loading,
    TResult Function(Statistics stat, DateTime lastPickedDate)? loadSuccess,
    TResult Function(StatisticsFailure failure, DateTime lastPickedDate)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(lastPickedDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements StatisticsState {
  const factory Loading({required DateTime lastPickedDate}) = _$Loading;

  @override
  DateTime get lastPickedDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $LoadingCopyWith<Loading> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadSuccessCopyWith<$Res>
    implements $StatisticsStateCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  @override
  $Res call({Statistics stat, DateTime lastPickedDate});

  $StatisticsCopyWith<$Res> get stat;
}

/// @nodoc
class _$LoadSuccessCopyWithImpl<$Res>
    extends _$StatisticsStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object? stat = freezed,
    Object? lastPickedDate = freezed,
  }) {
    return _then(LoadSuccess(
      stat: stat == freezed
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as Statistics,
      lastPickedDate: lastPickedDate == freezed
          ? _value.lastPickedDate
          : lastPickedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $StatisticsCopyWith<$Res> get stat {
    return $StatisticsCopyWith<$Res>(_value.stat, (value) {
      return _then(_value.copyWith(stat: value));
    });
  }
}

/// @nodoc

class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess({required this.stat, required this.lastPickedDate});

  @override
  final Statistics stat;
  @override
  final DateTime lastPickedDate;

  @override
  String toString() {
    return 'StatisticsState.loadSuccess(stat: $stat, lastPickedDate: $lastPickedDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.stat, stat) ||
                const DeepCollectionEquality().equals(other.stat, stat)) &&
            (identical(other.lastPickedDate, lastPickedDate) ||
                const DeepCollectionEquality()
                    .equals(other.lastPickedDate, lastPickedDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(stat) ^
      const DeepCollectionEquality().hash(lastPickedDate);

  @JsonKey(ignore: true)
  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime lastPickedDate) initial,
    required TResult Function(DateTime lastPickedDate) loading,
    required TResult Function(Statistics stat, DateTime lastPickedDate)
        loadSuccess,
    required TResult Function(
            StatisticsFailure failure, DateTime lastPickedDate)
        loadFailure,
  }) {
    return loadSuccess(stat, lastPickedDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime lastPickedDate)? initial,
    TResult Function(DateTime lastPickedDate)? loading,
    TResult Function(Statistics stat, DateTime lastPickedDate)? loadSuccess,
    TResult Function(StatisticsFailure failure, DateTime lastPickedDate)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(stat, lastPickedDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadSuccess implements StatisticsState {
  const factory LoadSuccess(
      {required Statistics stat,
      required DateTime lastPickedDate}) = _$LoadSuccess;

  Statistics get stat => throw _privateConstructorUsedError;
  @override
  DateTime get lastPickedDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadFailureCopyWith<$Res>
    implements $StatisticsStateCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
  @override
  $Res call({StatisticsFailure failure, DateTime lastPickedDate});

  $StatisticsFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$LoadFailureCopyWithImpl<$Res>
    extends _$StatisticsStateCopyWithImpl<$Res>
    implements $LoadFailureCopyWith<$Res> {
  _$LoadFailureCopyWithImpl(
      LoadFailure _value, $Res Function(LoadFailure) _then)
      : super(_value, (v) => _then(v as LoadFailure));

  @override
  LoadFailure get _value => super._value as LoadFailure;

  @override
  $Res call({
    Object? failure = freezed,
    Object? lastPickedDate = freezed,
  }) {
    return _then(LoadFailure(
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as StatisticsFailure,
      lastPickedDate: lastPickedDate == freezed
          ? _value.lastPickedDate
          : lastPickedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $StatisticsFailureCopyWith<$Res> get failure {
    return $StatisticsFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$LoadFailure implements LoadFailure {
  const _$LoadFailure({required this.failure, required this.lastPickedDate});

  @override
  final StatisticsFailure failure;
  @override
  final DateTime lastPickedDate;

  @override
  String toString() {
    return 'StatisticsState.loadFailure(failure: $failure, lastPickedDate: $lastPickedDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality()
                    .equals(other.failure, failure)) &&
            (identical(other.lastPickedDate, lastPickedDate) ||
                const DeepCollectionEquality()
                    .equals(other.lastPickedDate, lastPickedDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failure) ^
      const DeepCollectionEquality().hash(lastPickedDate);

  @JsonKey(ignore: true)
  @override
  $LoadFailureCopyWith<LoadFailure> get copyWith =>
      _$LoadFailureCopyWithImpl<LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime lastPickedDate) initial,
    required TResult Function(DateTime lastPickedDate) loading,
    required TResult Function(Statistics stat, DateTime lastPickedDate)
        loadSuccess,
    required TResult Function(
            StatisticsFailure failure, DateTime lastPickedDate)
        loadFailure,
  }) {
    return loadFailure(failure, lastPickedDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime lastPickedDate)? initial,
    TResult Function(DateTime lastPickedDate)? loading,
    TResult Function(Statistics stat, DateTime lastPickedDate)? loadSuccess,
    TResult Function(StatisticsFailure failure, DateTime lastPickedDate)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(failure, lastPickedDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class LoadFailure implements StatisticsState {
  const factory LoadFailure(
      {required StatisticsFailure failure,
      required DateTime lastPickedDate}) = _$LoadFailure;

  StatisticsFailure get failure => throw _privateConstructorUsedError;
  @override
  DateTime get lastPickedDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $LoadFailureCopyWith<LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
