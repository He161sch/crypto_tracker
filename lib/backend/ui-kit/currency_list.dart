import 'package:crypto_tracker/backend/ui-kit/currency.dart';
import 'package:crypto_tracker/backend/ui-kit/currency_model.dart';
import 'package:flutter/material.dart';

class CurrencyList extends StatelessWidget {
  const CurrencyList({Key? key, required this.currencies}) : super(key: key);

  final List<CurrencyModel> currencies;

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
