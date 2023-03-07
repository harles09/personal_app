import 'package:flutter/material.dart';

import '../shared/theme.dart';

class TransferButton extends StatelessWidget {
  final String title, description, redirect;
  final IconData baseIcon;

  const TransferButton(
      {super.key,
      required this.baseIcon,
      required this.title,
      required this.description,
      required this.redirect});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        Navigator.pushNamed(context, redirect);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.90,
          height: 70,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              width: 1,
              color: grey,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            children: [
              const SizedBox(width: 20.0),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: softPink,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Icon(
                  baseIcon,
                  size: 40.0,
                  color: radicalRed,
                ),
              ),
              const SizedBox(
                width: 10.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: transferTitleStyle,
                  ),
                  SizedBox(
                    width: 240,
                    child: Text(
                      description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: transferDescStyle,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              const Icon(color: lightGrey, Icons.navigate_next),
              const SizedBox(width: 10.0),
            ],
          ),
        ),
      ),
    );
  }
}
