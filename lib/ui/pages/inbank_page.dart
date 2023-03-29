import 'package:flutter/material.dart';
import 'package:personal_app/ui/shared/theme.dart';
import 'package:personal_app/ui/widgets/textfield_input.dart';

import '../widgets/previous_rekening.dart';

class InbankPage extends StatefulWidget {
  const InbankPage({super.key});

  @override
  State<InbankPage> createState() => _InbankPageState();
}

class _InbankPageState extends State<InbankPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 100,
                    height: 50,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Text(
                    "Send money to",
                    style: TextStyle(fontWeight: bold, fontSize: 16),
                  ),
                ],
              ),
              const DefaultTabController(
                length: 3,
                child: TabBar(
                  isScrollable: true,
                  indicatorColor: radicalRed,
                  indicatorWeight: 6,
                  tabs: [
                    Tab(
                      child: Text(
                        "Accounts Number",
                        style: TextStyle(color: radicalRed),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Phone Number",
                        style: TextStyle(color: black),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Email Address",
                        style: TextStyle(color: black),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10.0,
                  ),
                  const CustomTextField(
                    textLabel: "Account Number",
                    textWidth: 0.80,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  SizedBox(
                    width: 50,
                    height: 35,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        backgroundColor: buttonDisabledBg,
                      ),
                      child: const Icon(Icons.arrow_forward_ios),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    margin: const EdgeInsets.only(left: 10.0, right: 30.0),
                    child: const Divider(
                      color: black,
                    ),
                  )),
                  const Text("OR"),
                  Expanded(
                      child: Container(
                    margin: const EdgeInsets.only(left: 30.0, right: 10.0),
                    child: const Divider(
                      color: black,
                    ),
                  )),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                margin: const EdgeInsets.only(left: 10.0),
                child: const Text("Find from previous transactions"),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: const CustomTextField(
                  textLabel: "Account Number",
                  textWidth: 0.95,
                  needIcon: true,
                  textIcon: Icons.search,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              const PreviousRekening(
                bankName: "PT.Bank Jago",
                fullName: "John Doe",
                noRek: "3124215215",
              ),
              const PreviousRekening(
                bankName: "SavingAccount",
                fullName: "John Doe",
                noRek: "0055123124",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
