import 'package:crypto_tracker/widgets/navbar/navbar_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers.dart';

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
