// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CurrencyModel _$$_CurrencyModelFromJson(Map<String, dynamic> json) =>
    _$_CurrencyModel(
      symbol: json['symbol'] as String,
      price: Decimal.fromJson(json['price'] as String),
    );

Map<String, dynamic> _$$_CurrencyModelToJson(_$_CurrencyModel instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'price': instance.price,
    };
