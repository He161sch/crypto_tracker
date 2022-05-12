import 'package:crypto_tracker/widgets/navbar/navbar_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../home/home_page.dart';
import '../providers.dart';
import '../settings_page.dart';
import '../watchlist/watchlist_view.dart';

class NavbarView extends ConsumerWidget {
  const NavbarView({Key? key}) : super(key: key);

  // static const List pages = [HomePage(), WatchlistView(), SettingsPage()];
  // Widget get home => const HomePage();
  // Widget get watchlist => const WatchlistView();
  // Widget get settings => const SettingsPage();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final NavbarController controller = ref.read(providers.navbarControllerProvider.notifier);
    final NavbarModel model = ref.watch(providers.navbarControllerProvider);


    // List pages = [home, watchlist, settings];
    return Scaffold(
        body: model.pages[model.currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey[800],
          onTap: (int index) => controller.switchIndex(index),
          currentIndex: model.currentIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.alarm), label: "Trackers"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings")
          ],
        ));
  }
}

abstract class NavbarController extends StateNotifier<NavbarModel> {
  NavbarController(NavbarModel state) : super(state);

  void switchIndex(int index);
}
