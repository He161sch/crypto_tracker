import 'package:crypto_tracker/widgets/navbar/navbar_controller.dart';
import 'package:crypto_tracker/widgets/watchlist/watchlist_controller.dart';
import 'package:crypto_tracker/widgets/watchlist/watchlist_model.dart';
import 'package:crypto_tracker/widgets/watchlist/watchlist_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'navbar/navbar_model.dart';
import 'navbar/navbar_view.dart';

final Providers providers = Providers();

class Providers {
  final StateNotifierProvider<WatchlistController, WatchlistModel>
      watchlistControllerProvider = StateNotifierProvider<WatchlistController, WatchlistModel>(
          (StateNotifierProviderRef ref) => WatchlistControllerImpl());
  final StateNotifierProvider<NavbarController, NavbarModel>
      navbarControllerProvider = StateNotifierProvider<NavbarController, NavbarModel>(
          (StateNotifierProviderRef ref) => NavbarControllerImpl());

}
