import 'package:crypto_tracker/widgets/home/home_page.dart';
import 'package:crypto_tracker/widgets/home/home_model.dart';

class HomeControllerImpl extends HomeController {
  HomeControllerImpl({
    HomeModel? model,
  }) : super(model ?? const HomeModel(searchedCurrency: ""));

  @override
  void searchCurrency() {
    state = state.copyWith(searchCurrency: "");
  }
}
