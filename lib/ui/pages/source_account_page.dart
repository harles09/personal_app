import 'package:flutter/material.dart';
import 'package:personal_app/ui/widgets/source_account_container.dart';

import '../shared/theme.dart';

class SourceAccountPage extends StatelessWidget {
  const SourceAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    color: radicalRed,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "/send");
                  },
                ),
              ),
              const Text("Transfer"),
            ],
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(color: grey),
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Select Source Account",
                      style: TextStyle(fontSize: 26, fontWeight: bold),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text(
                      "Saving Account",
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const SourceAccountContainer(
                        assetImage: "assets/images/simas-emoney.png",
                        noRek: "342184252151",
                        category: "E-Money",
                        fullName: "John Doe",
                        money: 10000),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const SourceAccountContainer(
                        assetImage: "assets/images/saving-paycard.png",
                        noRek: "005511231244",
                        category: "Tabungan Simas Payroll",
                        fullName: "John Doe",
                        money: 5000000),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
