import 'package:flutter/material.dart';

import '../shared/theme.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 150,
          decoration: BoxDecoration(
            color: barBG,
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15.0,
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsetsDirectional.only(
                    start: 10.0,
                  ),
                  width: 80,
                  height: 40,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/white-simobi.png",
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                    "assets/images/search.png",
                  ))),
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                    "assets/images/search.png",
                  ))),
                ),
                Container(
                  width: 80,
                  height: 40,
                  margin: const EdgeInsets.only(right: 10.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "LOGIN",
                      style: greyTextStyle,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "John Doe",
                style: fullNameStyle,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 120,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 50,
                        height: 40,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/simas-emoney.png",
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "0",
                        style: greyBoldTextStyle,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Tap for History",
                        style: TextStyle(
                          color: black,
                          fontWeight: regular,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 120,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: [
                      Container(
                        // margin: const EdgeInsets.only(top: 5.0),
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/simas-poin-new.png",
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "0",
                        style: greyBoldTextStyle,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Tap for History",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: regular,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 120,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: [
                      Container(
                        // margin: const EdgeInsets.only(top: 5.0),
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/simas-poin-new.png",
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Summary Portofolio",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: regular,
                          fontSize: 16.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
