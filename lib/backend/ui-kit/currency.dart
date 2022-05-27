import 'package:crypto_tracker/backend/ui-kit/currency_model.dart';
import 'package:flutter/material.dart';

class Currency extends StatelessWidget {
  final CurrencyModel currency;

  const Currency(this.currency, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.all(20),
        child: Center(
            child: Row(
          children: [
            const Text(
              "Currencies:",
              style: TextStyle(color: Colors.deepPurpleAccent),
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
                child: Text(
              currency.symbol,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.deepPurpleAccent),
            )),
            const SizedBox(
              width: 14,
            ),
            Text(
              "${currency.price}",
              style: TextStyle(color: Colors.deepPurpleAccent),
            ),
          ],
        )),
      );
}
