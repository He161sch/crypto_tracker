import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:crypto_tracker/widgets/home/home_controller.dart';
import 'package:crypto_tracker/widgets/home/home_model.dart';
import 'package:crypto_tracker/widgets/home/home_page.dart';

final Providers providers = Providers();

class Providers {
  final StateNotifierProvider<HomeController, HomeModel>
      homeControllerProvider = StateNotifierProvider<HomeController, HomeModel>(
          (StateNotifierProviderRef ref) => HomeControllerImpl());
}
