import 'package:crypto_tracker/pages/navigation/navbar_model.dart';
import 'package:crypto_tracker/pages/home/home_page.dart';
import 'package:crypto_tracker/pages/search/search_page.dart';
import 'package:crypto_tracker/pages/watchlist/watchlist_page.dart';
import 'package:crypto_tracker/pages/portfolio/portfolio_page.dart';
import 'navbar_view.dart';

class NavbarControllerImpl extends NavbarController {
  NavbarControllerImpl({
    NavbarModel? model,
  }) : super(model ??
            const NavbarModel(currentIndex: 0, pages: [
              HomePage(),
              SearchPage(),
              WatchlistPage(),
              PortfolioPage()
            ]));

  @override
  void switchIndex(int index) {
    state = state.copyWith(currentIndex: index);
  }
}
