import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../shared/theme.dart';

class CustomTextField extends StatelessWidget {
  final String textLabel, prefixName;
  final double textWidth;
  final bool isPassword, needPrefix, needIcon;
  final IconData textIcon;
  final TextInputType keyboardType;
  final TextAlign textAlign;
  const CustomTextField(
      {super.key,
      required this.textLabel,
      required this.textWidth,
      this.isPassword = false,
      this.needIcon = false,
      this.textIcon = Icons.person,
      this.needPrefix = false,
      this.prefixName = "RP",
      this.keyboardType = TextInputType.text,
      this.textAlign = TextAlign.start});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * textWidth,
      height: 50,
      child: TextFormField(
        inputFormatters: <TextInputFormatter>[
          CurrencyTextInputFormatter(
            locale: 'id',
            symbol: '',
            decimalDigits: 0,
          )
        ],
        keyboardType: keyboardType,
        obscureText: isPassword ? true : false,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.never,
          labelText: textLabel,
          prefixIcon: needPrefix
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      prefixName,
                      style: TextStyle(fontWeight: bold, fontSize: 16),
                    ),
                  ],
                )
              : null,
          suffixIcon: needIcon
              ? Icon(
                  textIcon,
                  color: Colors.grey,
                )
              : null,
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 1,
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 1,
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
