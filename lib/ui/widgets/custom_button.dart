import 'package:flutter/material.dart';
import 'package:personal_app/ui/shared/theme.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Color textColor;
  final double buttonWidth;
  const CustomButton(
      {super.key,
      required this.buttonText,
      this.textColor = Colors.white,
      required this.buttonWidth});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * buttonWidth,
      height: 40,
      child: FilledButton(
        onPressed: () {},
        style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(radicalRed),
        ),
        child: Text(
          buttonText,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
