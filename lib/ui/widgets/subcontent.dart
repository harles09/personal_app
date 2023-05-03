import 'package:flutter/material.dart';
import 'package:personal_app/ui/shared/theme.dart';
import 'package:personal_app/ui/widgets/menu_content.dart';
import 'package:personal_app/ui/widgets/setting_content.dart';

class subContent extends StatelessWidget {
  const subContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 30.0,
        ),
        Text(
          "SimobiPlus Membership",
          style: greyTitleSubContent,
        ),
        const SizedBox(
          height: 15.0,
        ),
        const SettingContent(
          image: "assets/images/silver.png",
          title: "Silver Member",
          desc:
              "As a Silver Member we provide you with\nexclusive deals designed only for you!",
          navigation: "/member",
        ),
        const SizedBox(
          height: 5.0,
        ),
        const SettingContent(
          image: "assets/images/score-nilaiQ-beta.png",
          title: "My Score",
          desc: "Checkout your score performance and\nsee promotional offers",
          navigation: "/myscore",
        ),
        const SizedBox(
          height: 30.0,
        ),
        Text(
          "Account Settings",
          style: greyTitleSubContent,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.90,
          height: 400,
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
                left: 20.0, top: 30.0, right: 20.0, bottom: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                MenuContent(
                  iconImage: "assets/images/editProfile.png",
                  titleMenu: "Edit my personal data",
                  titleDesc: "Keep your personal data updated",
                  navigator: "/home",
                ),
                SizedBox(
                  height: 15.0,
                ),
                Divider(
                  thickness: 1,
                  color: grey,
                ),
                SizedBox(
                  height: 15,
                ),
                MenuContent(
                  iconImage: "assets/images/easypin.png",
                  titleMenu: "Change EasyPIN",
                  titleDesc:
                      "Change your current EasyPIN for\nlogin and other transaction\nverification purpose",
                  navigator: "/home",
                ),
                SizedBox(
                  height: 15.0,
                ),
                Divider(
                  thickness: 1,
                  color: grey,
                ),
                SizedBox(
                  height: 15,
                ),
                MenuContent(
                  iconImage: "assets/images/password.png",
                  titleMenu: "Change Password",
                  titleDesc:
                      "Change your current EasyPIN for\nlogin and other verification purpose",
                  navigator: "/home",
                ),
                SizedBox(
                  height: 15.0,
                ),
                Divider(
                  thickness: 1,
                  color: grey,
                ),
                SizedBox(
                  height: 15,
                ),
                MenuContent(
                  iconImage: "assets/images/ibank.png",
                  titleMenu: "Internet Banking",
                  titleDesc: "Manage your Internet Banking access",
                  navigator: "/home",
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 30.0,
        ),
        Text(
          "App Settings",
          style: greyTitleSubContent,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.90,
          height: 400,
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
                left: 20.0, top: 30.0, right: 20.0, bottom: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                MenuContent(
                  iconImage: "assets/images/editProfile.png",
                  titleMenu: "Login preference",
                  titleDesc: "Manage your login options",
                  navigator: "/home",
                ),
                SizedBox(
                  height: 15.0,
                ),
                Divider(
                  thickness: 1,
                  color: grey,
                ),
                SizedBox(
                  height: 15,
                ),
                MenuContent(
                  iconImage: "assets/images/language.png",
                  titleMenu: "Language",
                  titleDesc: "Choose your prefered languages",
                  navigator: "/home",
                ),
                SizedBox(
                  height: 15.0,
                ),
                Divider(
                  thickness: 1,
                  color: grey,
                ),
                SizedBox(
                  height: 15,
                ),
                MenuContent(
                  iconImage: "assets/images/change.png",
                  titleMenu: "Change Device",
                  titleDesc:
                      "Move your authenticated device into\na fresh new one",
                  navigator: "/home",
                ),
                SizedBox(
                  height: 15.0,
                ),
                Divider(
                  thickness: 1,
                  color: grey,
                ),
                SizedBox(
                  height: 15,
                ),
                MenuContent(
                  iconImage: "assets/images/cleardata.png",
                  titleMenu: "Clear SimobiPlus data",
                  titleDesc:
                      "Clearing app data resets the\napplication to scratch",
                  navigator: "/home",
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 30.0,
        ),
        Text(
          "Transaction Settings",
          style: greyTitleSubContent,
        ),
        const SizedBox(
          height: 15.0,
        ),
      ],
    );
  }
}
