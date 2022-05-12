import 'package:crypto_tracker/widgets/portfolio/portfolio_model.dart';
import 'package:crypto_tracker/widgets/portfolio/portfolio_view.dart';

class PortfolioControllerImpl extends PortfolioController {
  PortfolioControllerImpl({
    PortfolioModel? model,
  }) : super(model ??
            PortfolioModel(stocks: [
              Stock(name: "test", holding: 500.13, change: 3.2),
              Stock(name: "bitcoin", holding: 2424.43, change: 3.2),
              Stock(name: "Doge", holding: 452.13, change: 3.2),
              Stock(name: "Eterium", holding: 630.13, change: 3.2)
            ]));

  @override
  void setupStocks() {
    state = state.copyWith(stocks: Stock.getAll());
  }
}
