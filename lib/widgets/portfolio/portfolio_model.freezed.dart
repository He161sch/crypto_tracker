// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'portfolio_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PortfolioModelTearOff {
  const _$PortfolioModelTearOff();

  _PortfolioModel call({required List<Stock> stocks}) {
    return _PortfolioModel(
      stocks: stocks,
    );
  }
}

/// @nodoc
const $PortfolioModel = _$PortfolioModelTearOff();

/// @nodoc
mixin _$PortfolioModel {
  List<Stock> get stocks => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PortfolioModelCopyWith<PortfolioModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortfolioModelCopyWith<$Res> {
  factory $PortfolioModelCopyWith(
          PortfolioModel value, $Res Function(PortfolioModel) then) =
      _$PortfolioModelCopyWithImpl<$Res>;
  $Res call({List<Stock> stocks});
}

/// @nodoc
class _$PortfolioModelCopyWithImpl<$Res>
    implements $PortfolioModelCopyWith<$Res> {
  _$PortfolioModelCopyWithImpl(this._value, this._then);

  final PortfolioModel _value;
  // ignore: unused_field
  final $Res Function(PortfolioModel) _then;

  @override
  $Res call({
    Object? stocks = freezed,
  }) {
    return _then(_value.copyWith(
      stocks: stocks == freezed
          ? _value.stocks
          : stocks // ignore: cast_nullable_to_non_nullable
              as List<Stock>,
    ));
  }
}

/// @nodoc
abstract class _$PortfolioModelCopyWith<$Res>
    implements $PortfolioModelCopyWith<$Res> {
  factory _$PortfolioModelCopyWith(
          _PortfolioModel value, $Res Function(_PortfolioModel) then) =
      __$PortfolioModelCopyWithImpl<$Res>;
  @override
  $Res call({List<Stock> stocks});
}

/// @nodoc
class __$PortfolioModelCopyWithImpl<$Res>
    extends _$PortfolioModelCopyWithImpl<$Res>
    implements _$PortfolioModelCopyWith<$Res> {
  __$PortfolioModelCopyWithImpl(
      _PortfolioModel _value, $Res Function(_PortfolioModel) _then)
      : super(_value, (v) => _then(v as _PortfolioModel));

  @override
  _PortfolioModel get _value => super._value as _PortfolioModel;

  @override
  $Res call({
    Object? stocks = freezed,
  }) {
    return _then(_PortfolioModel(
      stocks: stocks == freezed
          ? _value.stocks
          : stocks // ignore: cast_nullable_to_non_nullable
              as List<Stock>,
    ));
  }
}

/// @nodoc

class _$_PortfolioModel implements _PortfolioModel {
  const _$_PortfolioModel({required this.stocks});

  @override
  final List<Stock> stocks;

  @override
  String toString() {
    return 'PortfolioModel(stocks: $stocks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PortfolioModel &&
            const DeepCollectionEquality().equals(other.stocks, stocks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(stocks));

  @JsonKey(ignore: true)
  @override
  _$PortfolioModelCopyWith<_PortfolioModel> get copyWith =>
      __$PortfolioModelCopyWithImpl<_PortfolioModel>(this, _$identity);
}

abstract class _PortfolioModel implements PortfolioModel {
  const factory _PortfolioModel({required List<Stock> stocks}) =
      _$_PortfolioModel;

  @override
  List<Stock> get stocks;
  @override
  @JsonKey(ignore: true)
  _$PortfolioModelCopyWith<_PortfolioModel> get copyWith =>
      throw _privateConstructorUsedError;
}
