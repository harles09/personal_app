import 'package:flutter/material.dart';
import 'package:personal_app/ui/shared/theme.dart';

// ignore: must_be_immutable
class LayoutPage extends StatefulWidget {
  final Widget layoutBody;
  int isSelected;
  bool isLogin;
  LayoutPage(
      {super.key,
      required this.layoutBody,
      this.isSelected = 0,
      this.isLogin = false});

  @override
  State<LayoutPage> createState() => _LayoutState();
}

class _LayoutState extends State<LayoutPage> {
  @override
  Widget build(BuildContext context) {
    Widget bottomNavigation() {
      return BottomAppBar(
        height: 70.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Column(
                children: [
                  IconButton(
                    icon: widget.isSelected == 1
                        ? const Icon(
                            Icons.home_filled,
                            color: radicalRed,
                          )
                        : const Icon(Icons.home_outlined),
                    iconSize: 25,
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                  ),
                  Text(
                    "HOME",
                    style: TextStyle(
                      color: widget.isSelected == 1 ? radicalRed : black,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  IconButton(
                    icon: widget.isSelected == 2
                        ? const Icon(
                            Icons.money,
                            color: radicalRed,
                          )
                        : const Icon(Icons.money_outlined),
                    iconSize: 25,
                    onPressed: () {
                      Navigator.pushNamed(context, '/send');
                      // if (widget.isLogin == true) {
                      // } else {
                      //   Navigator.pushNamed(context, '/easypin');
                      // }
                    },
                  ),
                  Text(
                    "SEND",
                    style: TextStyle(
                      color: widget.isSelected == 2 ? radicalRed : black,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: const [
                  SizedBox(
                    height: 47,
                  ),
                  Text("SCAN"),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  IconButton(
                    icon: widget.isSelected == 3
                        ? const Icon(
                            Icons.tab,
                            color: radicalRed,
                          )
                        : const Icon(Icons.tab_outlined),
                    iconSize: 25,
                    onPressed: () {},
                  ),
                  const Text("CASH"),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  IconButton(
                    icon: widget.isSelected == 4
                        ? const Icon(
                            Icons.settings,
                            color: radicalRed,
                          )
                        : const Icon(Icons.settings_outlined),
                    iconSize: 25,
                    onPressed: () {
                      Navigator.pushNamed(context, '/setting');
                    },
                  ),
                  const Text("SETTING"),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Center(
        child: widget.layoutBody,
      ),
      floatingActionButton: Container(
        width: 60,
        height: 60,
        alignment: Alignment.center,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/easypin');
          },
          tooltip: "QRIS",
          elevation: 4.0,
          backgroundColor: radicalRed,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/qris_scan.png"),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: bottomNavigation(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
