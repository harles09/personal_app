import 'package:flutter/material.dart';
import 'package:money_formatter/money_formatter.dart';
import 'package:personal_app/main.dart';

import '../shared/theme.dart';

class SourceAccountContainer extends StatelessWidget {
  final String assetImage, noRek, category, fullName;
  final double money;
  const SourceAccountContainer(
      {super.key,
      required this.assetImage,
      required this.noRek,
      required this.category,
      required this.fullName,
      required this.money});

  @override
  Widget build(BuildContext context) {
    MoneyFormatter fmf = MoneyFormatter(
      amount: money,
      settings: MoneyFormatterSettings(
          symbol: 'IDR',
          thousandSeparator: '.',
          decimalSeparator: ',',
          fractionDigits: 0),
    );
    MoneyFormatterOutput fo = fmf.output;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/transfer",
            arguments: SourceAccount(noRek, fullName, "SavingAccount", money));
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.95,
        height: 100,
        decoration: const BoxDecoration(color: white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: 10.0,
            ),
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage(assetImage),
                ),
              ),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  noRek,
                  style: TextStyle(fontWeight: bold),
                ),
                Text(
                  category,
                ),
                Text(
                  fullName,
                ),
                Text(fo.symbolOnLeft),
                const SizedBox(
                  height: 10.0,
                ),
              ],
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios,
              color: grey,
            ),
            const SizedBox(
              width: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
