import 'package:flutter/material.dart';
import 'package:personal_app/ui/shared/theme.dart';

class EasyLoginPage extends StatelessWidget {
  const EasyLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    var easypinController = TextEditingController();

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: radicalRed,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 100.0,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 40.0,
                ),
                Text(
                  "EasyPIN Login",
                  style: easyTitleStyle,
                ),
                const SizedBox(
                  width: 70.0,
                ),
                Container(
                  width: 70,
                  height: 70,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/easypin.png"),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Text(
                "Enter your 6 digit secure code",
                style: TextStyle(color: white),
              ),
            ),
            const SizedBox(
              height: 140.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60.0, right: 60.0),
              child: TextFormField(
                controller: easypinController,
                style: const TextStyle(
                  color: Colors.white,
                ),
                obscureText: true,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  floatingLabelStyle: TextStyle(color: radicalRed),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow),
                  ),
                  focusedErrorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30.0),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 40.0),
              child: Text(
                "Your account will be blocked after 3 incorrect attemps",
                style: whiteTextStyle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 40.0),
              child: Row(
                children: [
                  Text(
                    "Have login problem? ",
                    style: whiteTextStyle,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "Reset EasyPIN",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 180.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.95,
              height: 40,
              margin: const EdgeInsets.only(right: 15.0, left: 15.0),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "CONTINUE",
                  style: TextStyle(color: black, fontSize: 14),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
