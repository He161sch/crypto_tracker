import 'package:decimal/decimal.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pricechange_currency_model.freezed.dart';
part 'pricechange_currency_model.g.dart';

@freezed
class PriceChangeCurrencyModel with _$PriceChangeCurrencyModel {
  const factory PriceChangeCurrencyModel({
    required String symbol,
    required Decimal priceChange,
    required Decimal lastPrice,
  }) = _PriceChangeCurrencyModel;

  factory PriceChangeCurrencyModel.fromJson(Map<String, dynamic> json) =>
      _$PriceChangeCurrencyModelFromJson(json);
}
