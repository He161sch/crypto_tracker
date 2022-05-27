import 'package:crypto_tracker/backend/services/binance_api_rest.dart';
import 'package:crypto_tracker/backend/services/binance_api_rest_impl.dart';
import 'package:crypto_tracker/pages/navigation/navbar_model.dart';
import 'package:crypto_tracker/pages/navigation/navbar_controller.dart';
import 'package:crypto_tracker/pages/navigation/navbar_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:crypto_tracker/pages/home/home_controller.dart';
import 'package:crypto_tracker/pages/home/home_model.dart';
import 'package:crypto_tracker/pages/home/home_page.dart';

final Providers providers = Providers();

class Providers {
  final Provider<ApiServiceAggregator> apiServiceProvider =
      Provider<ApiServiceAggregator>((ProviderRef _) => BinanceApiRestImpl());
  final StateNotifierProvider<NavbarController, NavbarModel>
      navbarControllerProvider =
      StateNotifierProvider<NavbarController, NavbarModel>(
          (StateNotifierProviderRef ref) => NavbarControllerImpl());

  final StateNotifierProvider<HomeController, HomeModel>
      homeControllerProvider = StateNotifierProvider<HomeController, HomeModel>(
          (StateNotifierProviderRef ref) => HomeControllerImpl(
              backendService: ref.read(providers.apiServiceProvider)));
}
