import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personal_app/ui/widgets/custom_button.dart';

import 'package:personal_app/ui/widgets/textfield_input.dart';

import '../shared/theme.dart';

class TransferPage extends StatefulWidget {
  const TransferPage({
    Key? key,
  }) : super(key: key);

  @override
  State<TransferPage> createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      Navigator.pop(context);
                    },
                  ),
                ),
                const Text("Transfer"),
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20.0,
                ),
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(45.0),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/Rp-icon.png"),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                const Text(
                  "Set the amount",
                  style: TextStyle(fontSize: 24),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              child: CustomTextField(
                textLabel: "0",
                textWidth: 0.90,
                keyboardType: TextInputType.number,
                needPrefix: true,
                prefixName: "Rp",
                needIcon: true,
                textIcon: FontAwesomeIcons.pencil,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Checkbox(
                  value: _value,
                  onChanged: (value2) {
                    setState(() {
                      _value = value2!;
                    });
                  },
                ),
                const Text("Schedule transfer"),
              ],
            ),
            const SizedBox(
              height: 40.0,
            ),
            const Divider(thickness: 1),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10.0,
                ),
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(45.0),
                      color: Colors.brown),
                  child: const Icon(
                    FontAwesomeIcons.wallet,
                    size: 15,
                    color: white,
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                const Text(
                  "Select source account",
                  style: TextStyle(fontSize: 24),
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.only(right: 10.0, left: 10.0, top: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Row(
                  children: const [
                    Text("Select source account"),
                    Spacer(),
                    Icon(Icons.more_vert),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Divider(
              thickness: 1,
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text("Additional information (optional)"),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: "Description",
                  labelStyle: TextStyle(fontSize: 12),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 150.0, left: 10.0, right: 10.0),
              child: CustomButton(
                buttonText: "Next",
                buttonWidth: 0.95,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
