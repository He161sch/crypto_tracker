import 'package:crypto_tracker/backend/ui-kit/currency/currency_model.dart';
import 'package:crypto_tracker/backend/ui-kit/details/currency_details.dart';
import 'package:crypto_tracker/backend/ui-kit/pricechange/pricechange_currency_list.dart';
import 'package:crypto_tracker/backend/ui-kit/pricechange/pricechange_currency_model.dart';
import 'package:flutter/material.dart';

class PriceChangeCurrency extends StatelessWidget {
  final PriceChangeCurrencyModel pricechange_currency;

  const PriceChangeCurrency(this.pricechange_currency, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ListTile(
        title: Center(
            child: Row(
          children: [
            // const Text(
            //   "Currencies:",
            //   style: TextStyle(color: Colors.deepPurpleAccent),
            // ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
                child: Text(
              pricechange_currency.symbol,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.deepPurpleAccent),
            )),
            const SizedBox(
              width: 14,
            ),
            Text(
              "${pricechange_currency.lastPrice}",
              style: TextStyle(color: Colors.deepPurpleAccent),
            ),
            const SizedBox(
              width: 14,
            ),
            Expanded(
                child: Text(
              pricechange_currency.priceChange.toString(),
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.deepPurpleAccent),
            ))
          ],
        )),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => CurrencyDetails(currency: pricechange_currency)));
        },
      );
}
