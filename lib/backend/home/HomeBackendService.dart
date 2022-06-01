import 'package:crypto_tracker/backend/ui-kit/currency/currency_model.dart';
import 'package:crypto_tracker/backend/ui-kit/pricechange/pricechange_currency_model.dart';

abstract class HomeBackendService {
  Future<List<CurrencyModel>> loadCurrencies();
  Future<List<PriceChangeCurrencyModel>> loadPriceChanges();
}
