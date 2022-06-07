import 'package:crypto_tracker/backend/ui-kit/details/currency_details.dart';
import 'package:crypto_tracker/backend/ui-kit/pricechange/pricechange_currency.dart';
import 'package:crypto_tracker/backend/ui-kit/pricechange/pricechange_currency_model.dart';
import 'package:flutter/material.dart';

class PriceChangeCurrencyList extends StatelessWidget {
  const PriceChangeCurrencyList({Key? key, required this.currencies}) : super(key: key);

  final List<PriceChangeCurrencyModel> currencies;

  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return PriceChangeCurrency(currencies[index]);
      },
      itemCount: currencies.length,
    );
  }
}
