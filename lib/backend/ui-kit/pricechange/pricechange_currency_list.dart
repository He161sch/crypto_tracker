import 'package:crypto_tracker/backend/ui-kit/currency/currency.dart';
import 'package:crypto_tracker/backend/ui-kit/pricechange/pricechange_currency_model.dart';
import 'package:flutter/material.dart';

class PriceChangeCurrency extends StatelessWidget {
  const PriceChangeCurrencyList({Key? key, required this.currencies}) : super(key: key);

  final List<PriceChangeCurrency> currencies;

  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return Currency(currencies[index]);
        },
        separatorBuilder: (context, index) {
          return const Divider(color: Colors.grey);
        },
        itemCount: currencies.length);
  }
}
