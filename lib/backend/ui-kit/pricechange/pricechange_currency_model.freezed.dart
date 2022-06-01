// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pricechange_currency_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PriceChangeCurrencyModel _$PriceChangeCurrencyModelFromJson(
    Map<String, dynamic> json) {
  return PriceChangeCurrencyModel.fromJson(json);
}

/// @nodoc
class _$PriceChangeCurrencyModelTearOff {
  const _$PriceChangeCurrencyModelTearOff();

  PriceChangeCurrencyModel call(
      {required String symbol,
      required Decimal priceChange,
      required Decimal lastPrice}) {
    return PriceChangeCurrencyModel(
      symbol: symbol,
      priceChange: priceChange,
      lastPrice: lastPrice,
    );
  }

  PriceChangeCurrencyModel fromJson(Map<String, Object?> json) {
    return PriceChangeCurrencyModel.fromJson(json);
  }
}

/// @nodoc
const $PriceChangeCurrencyModel = _$PriceChangeCurrencyModelTearOff();

/// @nodoc
mixin _$PriceChangeCurrencyModel {
  String get symbol => throw _privateConstructorUsedError;
  Decimal get priceChange => throw _privateConstructorUsedError;
  Decimal get lastPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PriceChangeCurrencyModelCopyWith<PriceChangeCurrencyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceChangeCurrencyModelCopyWith<$Res> {
  factory $PriceChangeCurrencyModelCopyWith(PriceChangeCurrencyModel value,
          $Res Function(PriceChangeCurrencyModel) then) =
      _$PriceChangeCurrencyModelCopyWithImpl<$Res>;
  $Res call({String symbol, Decimal priceChange, Decimal lastPrice});
}

/// @nodoc
class _$PriceChangeCurrencyModelCopyWithImpl<$Res>
    implements $PriceChangeCurrencyModelCopyWith<$Res> {
  _$PriceChangeCurrencyModelCopyWithImpl(this._value, this._then);

  final PriceChangeCurrencyModel _value;
  // ignore: unused_field
  final $Res Function(PriceChangeCurrencyModel) _then;

  @override
  $Res call({
    Object? symbol = freezed,
    Object? priceChange = freezed,
    Object? lastPrice = freezed,
  }) {
    return _then(_value.copyWith(
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      priceChange: priceChange == freezed
          ? _value.priceChange
          : priceChange // ignore: cast_nullable_to_non_nullable
              as Decimal,
      lastPrice: lastPrice == freezed
          ? _value.lastPrice
          : lastPrice // ignore: cast_nullable_to_non_nullable
              as Decimal,
    ));
  }
}

/// @nodoc
abstract class $PriceChangeCurrencyModelCopyWith<$Res>
    implements $PriceChangeCurrencyModelCopyWith<$Res> {
  factory $PriceChangeCurrencyModelCopyWith(PriceChangeCurrencyModel value,
          $Res Function(PriceChangeCurrencyModel) then) =
      _$PriceChangeCurrencyModelCopyWithImpl<$Res>;
  @override
  $Res call({String symbol, Decimal priceChange, Decimal lastPrice});
}

/// @nodoc
class _$PriceChangeCurrencyModelCopyWithImpl<$Res>
    extends _$PriceChangeCurrencyModelCopyWithImpl<$Res>
    implements $PriceChangeCurrencyModelCopyWith<$Res> {
  _$PriceChangeCurrencyModelCopyWithImpl(PriceChangeCurrencyModel _value,
      $Res Function(PriceChangeCurrencyModel) _then)
      : super(_value, (v) => _then(v as PriceChangeCurrencyModel));

  @override
  PriceChangeCurrencyModel get _value =>
      super._value as PriceChangeCurrencyModel;

  @override
  $Res call({
    Object? symbol = freezed,
    Object? priceChange = freezed,
    Object? lastPrice = freezed,
  }) {
    return _then(PriceChangeCurrencyModel(
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      priceChange: priceChange == freezed
          ? _value.priceChange
          : priceChange // ignore: cast_nullable_to_non_nullable
              as Decimal,
      lastPrice: lastPrice == freezed
          ? _value.lastPrice
          : lastPrice // ignore: cast_nullable_to_non_nullable
              as Decimal,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PriceChangeCurrencyModel
    with DiagnosticableTreeMixin
    implements PriceChangeCurrencyModel {
  const _$PriceChangeCurrencyModel(
      {required this.symbol,
      required this.priceChange,
      required this.lastPrice});

  factory _$PriceChangeCurrencyModel.fromJson(Map<String, dynamic> json) =>
      _$$PriceChangeCurrencyModelFromJson(json);

  @override
  final String symbol;
  @override
  final Decimal priceChange;
  @override
  final Decimal lastPrice;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PriceChangeCurrencyModel(symbol: $symbol, priceChange: $priceChange, lastPrice: $lastPrice)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PriceChangeCurrencyModel'))
      ..add(DiagnosticsProperty('symbol', symbol))
      ..add(DiagnosticsProperty('priceChange', priceChange))
      ..add(DiagnosticsProperty('lastPrice', lastPrice));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PriceChangeCurrencyModel &&
            const DeepCollectionEquality().equals(other.symbol, symbol) &&
            const DeepCollectionEquality()
                .equals(other.priceChange, priceChange) &&
            const DeepCollectionEquality().equals(other.lastPrice, lastPrice));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(symbol),
      const DeepCollectionEquality().hash(priceChange),
      const DeepCollectionEquality().hash(lastPrice));

  @JsonKey(ignore: true)
  @override
  $PriceChangeCurrencyModelCopyWith<PriceChangeCurrencyModel> get copyWith =>
      _$PriceChangeCurrencyModelCopyWithImpl<PriceChangeCurrencyModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PriceChangeCurrencyModelToJson(this);
  }
}

abstract class PriceChangeCurrencyModel implements PriceChangeCurrencyModel {
  const factory PriceChangeCurrencyModel(
      {required String symbol,
      required Decimal priceChange,
      required Decimal lastPrice}) = _$PriceChangeCurrencyModel;

  factory PriceChangeCurrencyModel.fromJson(Map<String, dynamic> json) =
      _$PriceChangeCurrencyModel.fromJson;

  @override
  String get symbol;
  @override
  Decimal get priceChange;
  @override
  Decimal get lastPrice;
  @override
  @JsonKey(ignore: true)
  $PriceChangeCurrencyModelCopyWith<PriceChangeCurrencyModel> get copyWith =>
      throw _privateConstructorUsedError;
}
