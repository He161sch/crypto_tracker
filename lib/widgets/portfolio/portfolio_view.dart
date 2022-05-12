import 'dart:math';
import 'dart:ui';

import 'package:crypto_tracker/widgets/portfolio/portfolio_model.dart';
import 'package:crypto_tracker/widgets/providers.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PortfolioView extends ConsumerWidget {
  const PortfolioView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final PortfolioController controller =
        ref.read(providers.portfolioControllerProvider.notifier);
    final PortfolioModel model = ref.watch(providers.portfolioControllerProvider);

    List<PieChartSectionData> getSections(int touchedIndex) => model.stocks
        .asMap()
        .map<int, PieChartSectionData>((index, data) {
          final value = PieChartSectionData(
              color: Color(Random().nextInt(0xffffffff)),
              value: data.holding,
              title: data.name,
              radius: 50,
              titleStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xffffffff),
              ));
          return MapEntry(index, value);
        })
        .values
        .toList();

    int touchedIndex = 1;

    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
          padding: const EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,
          color: Colors.black,
          child: SafeArea(
            bottom: false,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: const <Widget>[
              Center(
                child: Text("Portfolio",
                    style: TextStyle(
                        color: Colors.white, fontSize: 36, fontWeight: FontWeight.bold)),
              ),
            ]),
          ),
        ),
        Positioned(
          top: 0.0,
          right: MediaQuery.of(context).size.width / 4,
          child: SizedBox(
            height: MediaQuery.of(context).size.height / 1.7,
            width: MediaQuery.of(context).size.width / 2,
            child: Center(
              child: PieChart(
                PieChartData(sections: getSections(touchedIndex)),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

abstract class PortfolioController extends StateNotifier<PortfolioModel> {
  PortfolioController(PortfolioModel state) : super(state);

  void setupStocks();
}
