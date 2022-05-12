// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'watchlist_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WatchlistModelTearOff {
  const _$WatchlistModelTearOff();

  _WatchlistModel call({required bool switchTree}) {
    return _WatchlistModel(
      switchTree: switchTree,
    );
  }
}

/// @nodoc
const $WatchlistModel = _$WatchlistModelTearOff();

/// @nodoc
mixin _$WatchlistModel {
  bool get switchTree => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WatchlistModelCopyWith<WatchlistModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatchlistModelCopyWith<$Res> {
  factory $WatchlistModelCopyWith(
          WatchlistModel value, $Res Function(WatchlistModel) then) =
      _$WatchlistModelCopyWithImpl<$Res>;
  $Res call({bool switchTree});
}

/// @nodoc
class _$WatchlistModelCopyWithImpl<$Res>
    implements $WatchlistModelCopyWith<$Res> {
  _$WatchlistModelCopyWithImpl(this._value, this._then);

  final WatchlistModel _value;
  // ignore: unused_field
  final $Res Function(WatchlistModel) _then;

  @override
  $Res call({
    Object? switchTree = freezed,
  }) {
    return _then(_value.copyWith(
      switchTree: switchTree == freezed
          ? _value.switchTree
          : switchTree // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$WatchlistModelCopyWith<$Res>
    implements $WatchlistModelCopyWith<$Res> {
  factory _$WatchlistModelCopyWith(
          _WatchlistModel value, $Res Function(_WatchlistModel) then) =
      __$WatchlistModelCopyWithImpl<$Res>;
  @override
  $Res call({bool switchTree});
}

/// @nodoc
class __$WatchlistModelCopyWithImpl<$Res>
    extends _$WatchlistModelCopyWithImpl<$Res>
    implements _$WatchlistModelCopyWith<$Res> {
  __$WatchlistModelCopyWithImpl(
      _WatchlistModel _value, $Res Function(_WatchlistModel) _then)
      : super(_value, (v) => _then(v as _WatchlistModel));

  @override
  _WatchlistModel get _value => super._value as _WatchlistModel;

  @override
  $Res call({
    Object? switchTree = freezed,
  }) {
    return _then(_WatchlistModel(
      switchTree: switchTree == freezed
          ? _value.switchTree
          : switchTree // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_WatchlistModel implements _WatchlistModel {
  const _$_WatchlistModel({required this.switchTree});

  @override
  final bool switchTree;

  @override
  String toString() {
    return 'WatchlistModel(switchTree: $switchTree)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WatchlistModel &&
            const DeepCollectionEquality()
                .equals(other.switchTree, switchTree));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(switchTree));

  @JsonKey(ignore: true)
  @override
  _$WatchlistModelCopyWith<_WatchlistModel> get copyWith =>
      __$WatchlistModelCopyWithImpl<_WatchlistModel>(this, _$identity);
}

abstract class _WatchlistModel implements WatchlistModel {
  const factory _WatchlistModel({required bool switchTree}) = _$_WatchlistModel;

  @override
  bool get switchTree;
  @override
  @JsonKey(ignore: true)
  _$WatchlistModelCopyWith<_WatchlistModel> get copyWith =>
      throw _privateConstructorUsedError;
}
