import 'package:crypto_tracker/widgets/navbar/navbar_model.dart';

import '../home/home_page.dart';
import '../settings_page.dart';
import '../watchlist/watchlist_view.dart';
import 'navbar_view.dart';


class NavbarControllerImpl extends NavbarController {
  NavbarControllerImpl({
    NavbarModel? model,
  }) : super(model ?? const NavbarModel(currentIndex: 0, pages: [HomePage(), WatchlistView(), SettingsPage()]));

  @override
  void switchIndex(int index) {
    state = state.copyWith(currentIndex: index);
  }
}