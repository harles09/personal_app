import 'package:flutter/material.dart';
import 'package:personal_app/ui/shared/layout.dart';
import 'package:personal_app/ui/widgets/deals_banner.dart';
import 'package:personal_app/ui/widgets/outline_button_deals.dart';
import 'package:personal_app/ui/widgets/product_service_banner.dart';
import '../shared/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget headerPage() {
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
                        backgroundColor:
                            MaterialStateProperty.all<Color>(white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
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

    Widget specialDeal() {
      return Container(
        width: MediaQuery.of(context).size.width,
        height: 220,
        color: Colors.white,
        child: Column(
          children: [
            const SizedBox(
              height: 12.0,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  "Special Deals",
                  style: cardTitleStyle,
                ),
                const Spacer(),
                Text(
                  "See all",
                  style: seeAllStyle,
                ),
                const SizedBox(
                  width: 10.0,
                ),
              ],
            ),
            const SizedBox(
              height: 5.0,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 10.0,
              ),
              height: 30,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const <Widget>[
                  OutlineButtonDeals(
                    text: "Lifestyle",
                    isActive: true,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  OutlineButtonDeals(
                    text: "Special Promo",
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  OutlineButtonDeals(
                    text: "Product",
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  OutlineButtonDeals(
                    text: "Investment",
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  OutlineButtonDeals(
                    text: "All Deals",
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Container(
              height: 120,
              margin: const EdgeInsets.only(
                left: 5.0,
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const <Widget>[
                  DealsBanner(
                      imageUrl: "assets/images/banner-ultravoucher.png",
                      title: "e-Voucher",
                      description: "Save more easier with e-Voucher"),
                  SizedBox(
                    width: 5.0,
                  ),
                  DealsBanner(
                      imageUrl: "assets/images/banner-ultravoucher.png",
                      title: "e-Voucher",
                      description: "Save more easier with e-Voucher"),
                  SizedBox(
                    width: 5.0,
                  ),
                  DealsBanner(
                      imageUrl: "assets/images/banner-ultravoucher.png",
                      title: "e-Voucher",
                      description: "Save more easier with e-Voucher"),
                  SizedBox(
                    width: 5.0,
                  ),
                  DealsBanner(
                      imageUrl: "assets/images/banner-ultravoucher.png",
                      title: "e-Voucher",
                      description: "Save more easier with e-Voucher"),
                  SizedBox(
                    width: 5.0,
                  ),
                  DealsBanner(
                      imageUrl: "assets/images/banner-ultravoucher.png",
                      title: "e-Voucher",
                      description: "Save more easier with e-Voucher"),
                  SizedBox(
                    width: 5.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget productService() {
      return Container(
        width: MediaQuery.of(context).size.width,
        height: 120,
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  "Product & Service",
                  style: cardTitleStyle,
                ),
                const Spacer(),
                Text(
                  "See all",
                  style: seeAllStyle,
                ),
                const SizedBox(
                  width: 10.0,
                ),
              ],
            ),
            Container(
              height: 100,
              margin: const EdgeInsets.only(
                left: 5.0,
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const <Widget>[
                  SizedBox(
                    width: 15.0,
                  ),
                  ProductServiceBanner(
                    imageUrl: "assets/images/ProductCC.png",
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  ProductServiceBanner(
                    imageUrl: "assets/images/productSA.png",
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  ProductServiceBanner(
                    imageUrl: "assets/images/productLoan.png",
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  ProductServiceBanner(
                    imageUrl: "assets/images/productInsurance.png",
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  ProductServiceBanner(
                    imageUrl: "assets/images/productopenTD.png",
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  ProductServiceBanner(
                    imageUrl: "assets/images/productRate.png",
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  ProductServiceBanner(
                    imageUrl: "assets/images/productSplitbill.png",
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return LayoutPage(
      isSelected: 1,
      layoutBody: Center(
        child: Column(
          children: [
            headerPage(),
            const SizedBox(
              height: 20.0,
            ),
            specialDeal(),
            productService(),
          ],
        ),
      ),
    );
  }
}
