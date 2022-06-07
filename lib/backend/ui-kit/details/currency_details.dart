import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';

import '../pricechange/pricechange_currency_model.dart';

class CurrencyDetails extends StatelessWidget {
  const CurrencyDetails({Key? key, required this.currency}) : super(key: key);

  final PriceChangeCurrencyModel currency;

  Widget _buildPrice(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: currency.lastPrice.toString(),
            style: TextStyle(
              color: Theme.of(context).textTheme.bodyText1!.color,
              fontWeight: FontWeight.w300,
              fontSize: 36,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPercentageChange() {
    return Text(
      (currency.priceChange * Decimal.fromInt(100)).toString() + '%',
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w300,
        color: currency.priceChange >= Decimal.zero ? Colors.green : Colors.red,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(currency.symbol),
      ),
      body: Center(
        child: Column(
          children: [_buildPrice(context), _buildPercentageChange()],
        ),
      ),
    );
  }
}
