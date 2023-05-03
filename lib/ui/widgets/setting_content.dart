import 'package:flutter/material.dart';

import '../shared/theme.dart';

class SettingContent extends StatelessWidget {
  final String image, title, desc, navigation;
  const SettingContent(
      {super.key,
      required this.image,
      required this.title,
      required this.desc,
      required this.navigation});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, navigation);
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.90,
        height: 100,
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: Row(
            children: [
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                  ),
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
                    style: TextStyle(fontWeight: bold),
                  ),
                  Text(
                    desc,
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              const SizedBox(
                width: 10.0,
              ),
              const Icon(
                Icons.navigate_next_outlined,
                color: radicalRed,
                size: 35.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
