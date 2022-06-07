import 'package:crypto_tracker/backend/ui-kit/pricechange/pricechange_currency_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:crypto_tracker/pages/common/providers.dart';
import 'package:crypto_tracker/pages/home/home_model.dart';
import 'package:crypto_tracker/backend/ui-kit/currency/currency.dart';
import 'package:crypto_tracker/backend/ui-kit/currency/currency_list.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final HomeController controller =
        ref.read(providers.homeControllerProvider.notifier);
    final HomeModel model = ref.watch(providers.homeControllerProvider);

    return Scaffold(
        body: Stack(children: <Widget>[
      Container(
          padding: const EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,
          color: Colors.black,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text("Currencies",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 50,
                      child: TextField(
                          decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.grey[500]),
                              hintText: "Search",
                              prefix: const Icon(Icons.search),
                              fillColor: Colors.grey[800],
                              filled: true,
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 0, style: BorderStyle.none)))),
                    ),
                    Container(
                      child: model.isLoading
                          ? const Center(
                              child: CircularProgressIndicator(),
                            )
                          : model.hasError
                              ? Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text(
                                          "Error: Failed to load Albums"),
                                      const SizedBox(height: 22),
                                      ElevatedButton(
                                        onPressed: () =>
                                            controller.fetchCurrencies(),
                                        child: const Text('Try again'),
                                      ),
                                    ],
                                  ),
                                )
                              : SizedBox(
                                  height: MediaQuery.of(context).size.height,
                                  child: PriceChangeCurrencyList(
                                      currencies: model.currencies),
                                ),
                    ),
                  ]),
            ),
          ))
    ]));
  }
}

abstract class HomeController extends StateNotifier<HomeModel> {
  HomeController(HomeModel state) : super(state);
  void fetchCurrencies();
}
