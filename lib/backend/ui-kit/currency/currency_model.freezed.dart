// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'currency_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrencyModel _$CurrencyModelFromJson(Map<String, dynamic> json) {
  return _CurrencyModel.fromJson(json);
}

/// @nodoc
class _$CurrencyModelTearOff {
  const _$CurrencyModelTearOff();

  _CurrencyModel call({required String symbol, required Decimal price}) {
    return _CurrencyModel(
      symbol: symbol,
      price: price,
    );
  }

  CurrencyModel fromJson(Map<String, Object?> json) {
    return CurrencyModel.fromJson(json);
  }
}

/// @nodoc
const $CurrencyModel = _$CurrencyModelTearOff();

/// @nodoc
mixin _$CurrencyModel {
  String get symbol => throw _privateConstructorUsedError;
  Decimal get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrencyModelCopyWith<CurrencyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyModelCopyWith<$Res> {
  factory $CurrencyModelCopyWith(
          CurrencyModel value, $Res Function(CurrencyModel) then) =
      _$CurrencyModelCopyWithImpl<$Res>;
  $Res call({String symbol, Decimal price});
}

/// @nodoc
class _$CurrencyModelCopyWithImpl<$Res>
    implements $CurrencyModelCopyWith<$Res> {
  _$CurrencyModelCopyWithImpl(this._value, this._then);

  final CurrencyModel _value;
  // ignore: unused_field
  final $Res Function(CurrencyModel) _then;

  @override
  $Res call({
    Object? symbol = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Decimal,
    ));
  }
}

/// @nodoc
abstract class _$CurrencyModelCopyWith<$Res>
    implements $CurrencyModelCopyWith<$Res> {
  factory _$CurrencyModelCopyWith(
          _CurrencyModel value, $Res Function(_CurrencyModel) then) =
      __$CurrencyModelCopyWithImpl<$Res>;
  @override
  $Res call({String symbol, Decimal price});
}

/// @nodoc
class __$CurrencyModelCopyWithImpl<$Res>
    extends _$CurrencyModelCopyWithImpl<$Res>
    implements _$CurrencyModelCopyWith<$Res> {
  __$CurrencyModelCopyWithImpl(
      _CurrencyModel _value, $Res Function(_CurrencyModel) _then)
      : super(_value, (v) => _then(v as _CurrencyModel));

  @override
  _CurrencyModel get _value => super._value as _CurrencyModel;

  @override
  $Res call({
    Object? symbol = freezed,
    Object? price = freezed,
  }) {
    return _then(_CurrencyModel(
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Decimal,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CurrencyModel with DiagnosticableTreeMixin implements _CurrencyModel {
  const _$_CurrencyModel({required this.symbol, required this.price});

  factory _$_CurrencyModel.fromJson(Map<String, dynamic> json) =>
      _$$_CurrencyModelFromJson(json);

  @override
  final String symbol;
  @override
  final Decimal price;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CurrencyModel(symbol: $symbol, price: $price)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CurrencyModel'))
      ..add(DiagnosticsProperty('symbol', symbol))
      ..add(DiagnosticsProperty('price', price));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CurrencyModel &&
            const DeepCollectionEquality().equals(other.symbol, symbol) &&
            const DeepCollectionEquality().equals(other.price, price));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(symbol),
      const DeepCollectionEquality().hash(price));

  @JsonKey(ignore: true)
  @override
  _$CurrencyModelCopyWith<_CurrencyModel> get copyWith =>
      __$CurrencyModelCopyWithImpl<_CurrencyModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrencyModelToJson(this);
  }
}

abstract class _CurrencyModel implements CurrencyModel {
  const factory _CurrencyModel(
      {required String symbol, required Decimal price}) = _$_CurrencyModel;

  factory _CurrencyModel.fromJson(Map<String, dynamic> json) =
      _$_CurrencyModel.fromJson;

  @override
  String get symbol;
  @override
  Decimal get price;
  @override
  @JsonKey(ignore: true)
  _$CurrencyModelCopyWith<_CurrencyModel> get copyWith =>
      throw _privateConstructorUsedError;
}
