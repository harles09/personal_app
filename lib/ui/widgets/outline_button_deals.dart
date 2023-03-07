import 'package:flutter/material.dart';

import '../shared/theme.dart';

class OutlineButtonDeals extends StatelessWidget {
  final String text;
  final bool isActive;

  const OutlineButtonDeals(
      {super.key, required this.text, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all<Color>(isActive ? radicalRed : white),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: isActive ? white : grey,
        ),
      ),
    );
  }
}
