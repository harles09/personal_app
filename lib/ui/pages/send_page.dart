import 'package:flutter/material.dart';
import 'package:personal_app/ui/shared/theme.dart';
import 'package:personal_app/ui/widgets/transfer_button.dart';

class SendPage extends StatelessWidget {
  const SendPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            alignment: Alignment.center,
            color: radicalRed,
            child: Text(
              "Transfer",
              style: titlePageStyle,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 140.0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    "Transfer Type",
                    style: subTitleStyle,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    "Please select the type of transfer",
                  ),
                ),
                const SizedBox(height: 15.0),
                const TransferButton(
                  baseIcon: Icons.abc,
                  title: "Transfer Domestik",
                  description: "Money transfer to domestik bank",
                  redirect: '/inbank',
                ),
                const SizedBox(height: 15.0),
                const TransferButton(
                  baseIcon: Icons.browser_updated,
                  title: "Remittance",
                  description:
                      "Money transfer to other bank in foreign currency",
                  redirect: '/inbank',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
