import 'package:crypto_tracker/backend/ui-kit/currency_model.dart';

abstract class HomeBackendService {
  Future<List<CurrencyModel>> loadCurrencies();

  getAllCurrencies() {}
}
