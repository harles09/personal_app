import 'package:flutter/material.dart';

import '../shared/theme.dart';

class MenuContent extends StatelessWidget {
  final String iconImage, titleMenu, titleDesc, navigator;
  const MenuContent(
      {super.key,
      required this.iconImage,
      required this.titleMenu,
      required this.titleDesc,
      required this.navigator});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, navigator);
      },
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(iconImage),
              ),
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                titleMenu,
                style: cardTitleStyle,
              ),
              Text(titleDesc),
            ],
          ),
          const Spacer(),
          const Icon(
            Icons.arrow_forward_ios,
            color: radicalRed,
          )
        ],
      ),
    );
  }
}
