import 'package:myapp/backend/ui-kit/currency_model.dart';

abstract class HomeBackendService {
  Future<List<CurrencyModel>> loadCurrencies();
}
