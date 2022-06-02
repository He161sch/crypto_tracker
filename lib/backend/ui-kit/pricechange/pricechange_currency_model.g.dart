// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pricechange_currency_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PriceChangeCurrencyModel _$$_PriceChangeCurrencyModelFromJson(
        Map<String, dynamic> json) =>
    _$_PriceChangeCurrencyModel(
      symbol: json['symbol'] as String,
      priceChange: Decimal.fromJson(json['priceChange'] as String),
      lastPrice: Decimal.fromJson(json['lastPrice'] as String),
    );

Map<String, dynamic> _$$_PriceChangeCurrencyModelToJson(
        _$_PriceChangeCurrencyModel instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'priceChange': instance.priceChange,
      'lastPrice': instance.lastPrice,
    };
