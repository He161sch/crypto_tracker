// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CurrencyModel _$$_CurrencyModelFromJson(Map<String, dynamic> json) =>
    _$_CurrencyModel(
      id: json['id'] as int,
      name: json['name'] as String,
      currentPrice: Decimal.fromJson(json['currentPrice'] as String),
    );

Map<String, dynamic> _$$_CurrencyModelToJson(_$_CurrencyModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'currentPrice': instance.currentPrice,
    };
