import 'package:crypto_tracker/widgets/settings_page.dart';
import 'package:crypto_tracker/widgets/tracker_page.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [HomePage(), TrackerPage(), SettingsPage()];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey[800],
          onTap: onTap,
          currentIndex: currentIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.alarm), label: "Trackers"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings")
          ],
        ));
  }
}
