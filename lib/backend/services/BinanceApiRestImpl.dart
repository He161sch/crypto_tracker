import 'dart:convert';

import 'package:http/http.dart';

import '../ui-kit/currency_model.dart';
import 'BinanceApiRest.dart';

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
}
