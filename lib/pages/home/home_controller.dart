import 'package:crypto_tracker/backend/home/HomeBackendService.dart';
import 'package:crypto_tracker/backend/ui-kit/currency_model.dart';
import 'package:crypto_tracker/pages/home/home_page.dart';
import 'package:crypto_tracker/pages/home/home_model.dart';
import 'package:intl/intl.dart';

class HomeControllerImpl extends HomeController {
  final HomeBackendService _backendService;

  HomeControllerImpl({
    required HomeBackendService backendService,
    HomeModel? model,
  })  : _backendService = backendService,
        super(model ??
            const HomeModel(
                currencies: [],
                isLoading: true,
                hasError: false,
                currentDate: "")) {
    Future.wait(<Future<dynamic>>[
      _fetchCurrencies(),
    ]).whenComplete(() => state = state.copyWith(isLoading: false));
  }

  Future<void> _fetchCurrencies() async {
    state = state.copyWith(isLoading: true);
    try {
      List<CurrencyModel> currencies = await _backendService.getAllCurrencies();
      state = state.copyWith(
        currencies: currencies,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(hasError: true, isLoading: false);
    }
  }

  @override
  void fetchCurrencies() async => _fetchCurrencies();

  @override
  void getCurrentDate() {
    String dateNow = DateFormat("EEEEE, dd, yyyy").format(DateTime.now());
    state = state.copyWith(currentDate: dateNow);
  }

  @override
  void searchCurrency() {
    state = state.copyWith(currencies: []);
  }
}
