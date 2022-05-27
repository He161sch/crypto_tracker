import 'package:crypto_tracker/pages/navigation/navbar_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:crypto_tracker/pages/common/providers.dart';

class NavbarView extends ConsumerWidget {
  const NavbarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final NavbarController controller =
        ref.read(providers.navbarControllerProvider.notifier);
    final NavbarModel model = ref.watch(providers.navbarControllerProvider);

    return Scaffold(
        body: model.pages[model.currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black, // <-- This works for fixed
          selectedItemColor: Colors.greenAccent,
          unselectedItemColor: Colors.white,
          onTap: (int index) => controller.switchIndex(index),
          currentIndex: model.currentIndex,
          items: const [
            BottomNavigationBarItem(
                backgroundColor: Colors.grey,
                icon: Icon(Icons.home),
                label: "Home"),
            BottomNavigationBarItem(
                backgroundColor: Colors.grey,
                icon: Icon(Icons.alarm),
                label: "Search"),
            BottomNavigationBarItem(
                backgroundColor: Colors.grey,
                icon: Icon(Icons.stacked_line_chart_outlined),
                label: "Watchlist"),
            BottomNavigationBarItem(
                backgroundColor: Colors.grey,
                icon: Icon(Icons.attach_money_outlined),
                label: "Portfolio")
          ],
        ));
  }
}

abstract class NavbarController extends StateNotifier<NavbarModel> {
  NavbarController(NavbarModel state) : super(state);

  void switchIndex(int index);
}
