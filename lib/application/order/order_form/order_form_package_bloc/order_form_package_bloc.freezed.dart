// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'order_form_package_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OrderFormPackageEventTearOff {
  const _$OrderFormPackageEventTearOff();

  _Initialized initialized(Option<PackageInfo> initialPackageOption) {
    return _Initialized(
      initialPackageOption,
    );
  }

  _NameChanged packageNameChanged(String name) {
    return _NameChanged(
      name,
    );
  }

  _CategoryChanged categoryChanged(String category) {
    return _CategoryChanged(
      category,
    );
  }

  _TypeChanged typeChanged(String type) {
    return _TypeChanged(
      type,
    );
  }
}

/// @nodoc
const $OrderFormPackageEvent = _$OrderFormPackageEventTearOff();

/// @nodoc
mixin _$OrderFormPackageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<PackageInfo> initialPackageOption)
        initialized,
    required TResult Function(String name) packageNameChanged,
    required TResult Function(String category) categoryChanged,
    required TResult Function(String type) typeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<PackageInfo> initialPackageOption)? initialized,
    TResult Function(String name)? packageNameChanged,
    TResult Function(String category)? categoryChanged,
    TResult Function(String type)? typeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) packageNameChanged,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_TypeChanged value) typeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? packageNameChanged,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_TypeChanged value)? typeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderFormPackageEventCopyWith<$Res> {
  factory $OrderFormPackageEventCopyWith(OrderFormPackageEvent value,
          $Res Function(OrderFormPackageEvent) then) =
      _$OrderFormPackageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OrderFormPackageEventCopyWithImpl<$Res>
    implements $OrderFormPackageEventCopyWith<$Res> {
  _$OrderFormPackageEventCopyWithImpl(this._value, this._then);

  final OrderFormPackageEvent _value;
  // ignore: unused_field
  final $Res Function(OrderFormPackageEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<PackageInfo> initialPackageOption});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$OrderFormPackageEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? initialPackageOption = freezed,
  }) {
    return _then(_Initialized(
      initialPackageOption == freezed
          ? _value.initialPackageOption
          : initialPackageOption // ignore: cast_nullable_to_non_nullable
              as Option<PackageInfo>,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialPackageOption);

  @override
  final Option<PackageInfo> initialPackageOption;

  @override
  String toString() {
    return 'OrderFormPackageEvent.initialized(initialPackageOption: $initialPackageOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialPackageOption, initialPackageOption) ||
                const DeepCollectionEquality()
                    .equals(other.initialPackageOption, initialPackageOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialPackageOption);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<PackageInfo> initialPackageOption)
        initialized,
    required TResult Function(String name) packageNameChanged,
    required TResult Function(String category) categoryChanged,
    required TResult Function(String type) typeChanged,
  }) {
    return initialized(initialPackageOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<PackageInfo> initialPackageOption)? initialized,
    TResult Function(String name)? packageNameChanged,
    TResult Function(String category)? categoryChanged,
    TResult Function(String type)? typeChanged,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialPackageOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) packageNameChanged,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_TypeChanged value) typeChanged,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? packageNameChanged,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_TypeChanged value)? typeChanged,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements OrderFormPackageEvent {
  const factory _Initialized(Option<PackageInfo> initialPackageOption) =
      _$_Initialized;

  Option<PackageInfo> get initialPackageOption =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NameChangedCopyWith<$Res> {
  factory _$NameChangedCopyWith(
          _NameChanged value, $Res Function(_NameChanged) then) =
      __$NameChangedCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class __$NameChangedCopyWithImpl<$Res>
    extends _$OrderFormPackageEventCopyWithImpl<$Res>
    implements _$NameChangedCopyWith<$Res> {
  __$NameChangedCopyWithImpl(
      _NameChanged _value, $Res Function(_NameChanged) _then)
      : super(_value, (v) => _then(v as _NameChanged));

  @override
  _NameChanged get _value => super._value as _NameChanged;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_NameChanged(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NameChanged implements _NameChanged {
  const _$_NameChanged(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'OrderFormPackageEvent.packageNameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NameChanged &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      __$NameChangedCopyWithImpl<_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<PackageInfo> initialPackageOption)
        initialized,
    required TResult Function(String name) packageNameChanged,
    required TResult Function(String category) categoryChanged,
    required TResult Function(String type) typeChanged,
  }) {
    return packageNameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<PackageInfo> initialPackageOption)? initialized,
    TResult Function(String name)? packageNameChanged,
    TResult Function(String category)? categoryChanged,
    TResult Function(String type)? typeChanged,
    required TResult orElse(),
  }) {
    if (packageNameChanged != null) {
      return packageNameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) packageNameChanged,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_TypeChanged value) typeChanged,
  }) {
    return packageNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? packageNameChanged,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_TypeChanged value)? typeChanged,
    required TResult orElse(),
  }) {
    if (packageNameChanged != null) {
      return packageNameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements OrderFormPackageEvent {
  const factory _NameChanged(String name) = _$_NameChanged;

  String get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CategoryChangedCopyWith<$Res> {
  factory _$CategoryChangedCopyWith(
          _CategoryChanged value, $Res Function(_CategoryChanged) then) =
      __$CategoryChangedCopyWithImpl<$Res>;
  $Res call({String category});
}

/// @nodoc
class __$CategoryChangedCopyWithImpl<$Res>
    extends _$OrderFormPackageEventCopyWithImpl<$Res>
    implements _$CategoryChangedCopyWith<$Res> {
  __$CategoryChangedCopyWithImpl(
      _CategoryChanged _value, $Res Function(_CategoryChanged) _then)
      : super(_value, (v) => _then(v as _CategoryChanged));

  @override
  _CategoryChanged get _value => super._value as _CategoryChanged;

  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(_CategoryChanged(
      category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CategoryChanged implements _CategoryChanged {
  const _$_CategoryChanged(this.category);

  @override
  final String category;

  @override
  String toString() {
    return 'OrderFormPackageEvent.categoryChanged(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CategoryChanged &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(category);

  @JsonKey(ignore: true)
  @override
  _$CategoryChangedCopyWith<_CategoryChanged> get copyWith =>
      __$CategoryChangedCopyWithImpl<_CategoryChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<PackageInfo> initialPackageOption)
        initialized,
    required TResult Function(String name) packageNameChanged,
    required TResult Function(String category) categoryChanged,
    required TResult Function(String type) typeChanged,
  }) {
    return categoryChanged(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<PackageInfo> initialPackageOption)? initialized,
    TResult Function(String name)? packageNameChanged,
    TResult Function(String category)? categoryChanged,
    TResult Function(String type)? typeChanged,
    required TResult orElse(),
  }) {
    if (categoryChanged != null) {
      return categoryChanged(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) packageNameChanged,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_TypeChanged value) typeChanged,
  }) {
    return categoryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? packageNameChanged,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_TypeChanged value)? typeChanged,
    required TResult orElse(),
  }) {
    if (categoryChanged != null) {
      return categoryChanged(this);
    }
    return orElse();
  }
}

abstract class _CategoryChanged implements OrderFormPackageEvent {
  const factory _CategoryChanged(String category) = _$_CategoryChanged;

  String get category => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CategoryChangedCopyWith<_CategoryChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TypeChangedCopyWith<$Res> {
  factory _$TypeChangedCopyWith(
          _TypeChanged value, $Res Function(_TypeChanged) then) =
      __$TypeChangedCopyWithImpl<$Res>;
  $Res call({String type});
}

/// @nodoc
class __$TypeChangedCopyWithImpl<$Res>
    extends _$OrderFormPackageEventCopyWithImpl<$Res>
    implements _$TypeChangedCopyWith<$Res> {
  __$TypeChangedCopyWithImpl(
      _TypeChanged _value, $Res Function(_TypeChanged) _then)
      : super(_value, (v) => _then(v as _TypeChanged));

  @override
  _TypeChanged get _value => super._value as _TypeChanged;

  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_TypeChanged(
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TypeChanged implements _TypeChanged {
  const _$_TypeChanged(this.type);

  @override
  final String type;

  @override
  String toString() {
    return 'OrderFormPackageEvent.typeChanged(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TypeChanged &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  _$TypeChangedCopyWith<_TypeChanged> get copyWith =>
      __$TypeChangedCopyWithImpl<_TypeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<PackageInfo> initialPackageOption)
        initialized,
    required TResult Function(String name) packageNameChanged,
    required TResult Function(String category) categoryChanged,
    required TResult Function(String type) typeChanged,
  }) {
    return typeChanged(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<PackageInfo> initialPackageOption)? initialized,
    TResult Function(String name)? packageNameChanged,
    TResult Function(String category)? categoryChanged,
    TResult Function(String type)? typeChanged,
    required TResult orElse(),
  }) {
    if (typeChanged != null) {
      return typeChanged(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) packageNameChanged,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_TypeChanged value) typeChanged,
  }) {
    return typeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? packageNameChanged,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_TypeChanged value)? typeChanged,
    required TResult orElse(),
  }) {
    if (typeChanged != null) {
      return typeChanged(this);
    }
    return orElse();
  }
}

abstract class _TypeChanged implements OrderFormPackageEvent {
  const factory _TypeChanged(String type) = _$_TypeChanged;

  String get type => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TypeChangedCopyWith<_TypeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$OrderFormPackageStateTearOff {
  const _$OrderFormPackageStateTearOff();

  _OrderFormPackageState call({required PackageInfo package}) {
    return _OrderFormPackageState(
      package: package,
    );
  }
}

/// @nodoc
const $OrderFormPackageState = _$OrderFormPackageStateTearOff();

/// @nodoc
mixin _$OrderFormPackageState {
  PackageInfo get package => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderFormPackageStateCopyWith<OrderFormPackageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderFormPackageStateCopyWith<$Res> {
  factory $OrderFormPackageStateCopyWith(OrderFormPackageState value,
          $Res Function(OrderFormPackageState) then) =
      _$OrderFormPackageStateCopyWithImpl<$Res>;
  $Res call({PackageInfo package});
}

/// @nodoc
class _$OrderFormPackageStateCopyWithImpl<$Res>
    implements $OrderFormPackageStateCopyWith<$Res> {
  _$OrderFormPackageStateCopyWithImpl(this._value, this._then);

  final OrderFormPackageState _value;
  // ignore: unused_field
  final $Res Function(OrderFormPackageState) _then;

  @override
  $Res call({
    Object? package = freezed,
  }) {
    return _then(_value.copyWith(
      package: package == freezed
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as PackageInfo,
    ));
  }
}

/// @nodoc
abstract class _$OrderFormPackageStateCopyWith<$Res>
    implements $OrderFormPackageStateCopyWith<$Res> {
  factory _$OrderFormPackageStateCopyWith(_OrderFormPackageState value,
          $Res Function(_OrderFormPackageState) then) =
      __$OrderFormPackageStateCopyWithImpl<$Res>;
  @override
  $Res call({PackageInfo package});
}

/// @nodoc
class __$OrderFormPackageStateCopyWithImpl<$Res>
    extends _$OrderFormPackageStateCopyWithImpl<$Res>
    implements _$OrderFormPackageStateCopyWith<$Res> {
  __$OrderFormPackageStateCopyWithImpl(_OrderFormPackageState _value,
      $Res Function(_OrderFormPackageState) _then)
      : super(_value, (v) => _then(v as _OrderFormPackageState));

  @override
  _OrderFormPackageState get _value => super._value as _OrderFormPackageState;

  @override
  $Res call({
    Object? package = freezed,
  }) {
    return _then(_OrderFormPackageState(
      package: package == freezed
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as PackageInfo,
    ));
  }
}

/// @nodoc

class _$_OrderFormPackageState implements _OrderFormPackageState {
  const _$_OrderFormPackageState({required this.package});

  @override
  final PackageInfo package;

  @override
  String toString() {
    return 'OrderFormPackageState(package: $package)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrderFormPackageState &&
            (identical(other.package, package) ||
                const DeepCollectionEquality().equals(other.package, package)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(package);

  @JsonKey(ignore: true)
  @override
  _$OrderFormPackageStateCopyWith<_OrderFormPackageState> get copyWith =>
      __$OrderFormPackageStateCopyWithImpl<_OrderFormPackageState>(
          this, _$identity);
}

abstract class _OrderFormPackageState implements OrderFormPackageState {
  const factory _OrderFormPackageState({required PackageInfo package}) =
      _$_OrderFormPackageState;

  @override
  PackageInfo get package => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OrderFormPackageStateCopyWith<_OrderFormPackageState> get copyWith =>
      throw _privateConstructorUsedError;
}
