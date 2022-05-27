import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:crypto_tracker/pages/common/providers.dart';
import 'package:crypto_tracker/pages/home/home_model.dart';
import 'package:crypto_tracker/backend/ui-kit/currency.dart';

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
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text("Currencies",
                      style: TextStyle(
                          color: Color.fromARGB(255, 22, 16, 16),
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
                  SizedBox(height: 30),
                  SingleChildScrollView(
                    child: model.isLoading
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : model.hasError
                            ? Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text("Error: Failed to load Albums"),
                                    const SizedBox(height: 22),
                                    ElevatedButton(
                                      onPressed: () =>
                                          controller.fetchCurrencies(),
                                      child: const Text('Try again'),
                                    ),
                                  ],
                                ),
                              )
                            : Padding(
                                padding: const EdgeInsets.all(8),
                                child: ListView.separated(
                                  shrinkWrap: true,
                                  itemCount: model.currencies.length,
                                  itemBuilder: (_, int index) =>
                                      Currency(model.currencies[index]),
                                  separatorBuilder: (_, int index) =>
                                      const Divider(
                                    indent: 8,
                                    endIndent: 8,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                  ),
                ]),
          ))
    ]));
  }
}

abstract class HomeController extends StateNotifier<HomeModel> {
  HomeController(HomeModel state) : super(state);
  void fetchCurrencies();
}
