import 'dart:convert';

import 'package:crypto_tracker/backend/ui-kit/pricechange/pricechange_currency_model.dart';
import 'package:crypto_tracker/backend/ui-kit/currency/currency_model.dart';
import 'package:http/http.dart';
import 'binance_api_rest.dart';

class BinanceApiRestImpl extends ApiServiceAggregator {
  @override
  Future<List<CurrencyModel>> loadCurrencies() async {
    Response response =
        await get(Uri.parse('https://api.binance.com/api/v3/ticker/price'));
    if (response.statusCode == 200) {
      Iterable data = json.decode(response.body);
      await Future.delayed(const Duration(milliseconds: 5000));
      return List<CurrencyModel>.from(
          data.map((model) => CurrencyModel.fromJson(model)));
    } else {
      throw Exception('Failed to load currencies');
    }
  }

  @override
  Future<List<PriceChangeCurrencyModel>> loadPriceChanges() async {
    Response response =
        await get(Uri.parse('https://api.binance.com/api/v3/ticker/24hr'));
    if (response.statusCode == 200) {
      Iterable data = json.decode(response.body);
      await Future.delayed(const Duration(milliseconds: 5000));
      return List<PriceChangeCurrencyModel>.from(
          data.map((model) => PriceChangeCurrencyModel.fromJson(model)));
    } else {
      throw Exception('Failed to load 24h price changes of currencies');
    }
  }
}
