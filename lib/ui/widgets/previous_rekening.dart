import 'package:flutter/material.dart';
import 'package:personal_app/ui/shared/theme.dart';

class PreviousRekening extends StatelessWidget {
  final String fullName, bankName, noRek;
  const PreviousRekening(
      {super.key,
      required this.fullName,
      required this.bankName,
      required this.noRek});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/transfer",
            arguments: {fullName, bankName, noRek});
      },
      child: Container(
        margin: const EdgeInsets.only(left: 10.0, right: 10.0),
        width: MediaQuery.of(context).size.width * 0.90,
        height: 70,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(fullName),
                const Spacer(),
                Text(
                  bankName,
                  style: const TextStyle(color: grey, fontSize: 11.0),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 10.0,
                ),
              ],
            ),
            Text(
              noRek,
              style: const TextStyle(fontSize: 11.0),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
