import 'package:flutter/material.dart';
import 'package:personal_app/ui/shared/layout.dart';
import 'package:personal_app/ui/widgets/subcontent.dart';

import '../shared/theme.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget settingHeader() {
      return Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 140,
            decoration: BoxDecoration(
              color: radicalRed,
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, right: 15.0, top: 25.0),
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/profileBG.png"),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "John Doe",
                          style: whiteBoldStyle,
                        ),
                        Text(
                          "*******4049",
                          style: whiteTextStyle,
                        ),
                      ],
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.notifications_none_outlined),
                      color: white,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.90,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Container(
                                width: 70,
                                height: 70,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/kuponNew.png"),
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Text("Coupon"),
                                  Text("0 Coupons"),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          color: Colors.grey.withOpacity(0.4),
                          width: 1,
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Container(
                                width: 70,
                                height: 70,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/evouchernew.png"),
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Text("E-voucher"),
                                  Text("0 E-Voucher"),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                ],
                              ),
                            ],
                          ),
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

    return LayoutPage(
      layoutBody: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: grey,
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                settingHeader(),
                const SizedBox(
                  height: 20.0,
                ),
                const subContent(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
