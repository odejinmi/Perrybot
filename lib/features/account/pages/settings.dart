import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perrybot/color/colors.dart';

import '../../../app/widgets/backarrow.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        width: Get.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xffFF9E9E), Color(0xff9e9e)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Column(
          children: [
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: const Backarrow(color: Color(0xffFF7CCB)),
              leadingWidth: 30,
              title: Text(
                "settings".tr,
                style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: Color(0xff000E3B)),
              ),
              actions: [
                Icon(
                  Icons.settings,
                  color: AppColor.primary_blue,
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.sunny,
                    color: Color(0xffF8BC22),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text("switch_to_dark_mode".tr)
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            GestureDetector(
              child: item(
                  Icon(
                    Icons.account_circle,
                    color: Color(0xffF8BC22),
                  ),
                  "account_settings".tr),
              onTap: () {
                Get.toNamed("/editprofile");
              },
            ),
            GestureDetector(
              child: item(
                  Icon(
                    Icons.wallet,
                    color: Color(0xff2255F8),
                  ),
                  "payment".tr),
              onTap: () {
                Get.toNamed("/payment");
              },
            ),
            GestureDetector(
              child: item(
                  Icon(
                    Icons.security,
                    color: Color(0xffF83C22),
                  ),
                  "security".tr),
              onTap: () {
                Get.toNamed("/security");
              },
            ),
            item(
                Icon(
                  Icons.support,
                  color: Color(0xff5FDB64),
                ),
                "support".tr),
            GestureDetector(
              child: item(
                  Container(
                    height: 20,
                    width: 20,
                    padding: EdgeInsets.all(0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xff6F6147)),
                    child: Text(
                      "!",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  "about".tr),
              onTap: () {
                Get.toNamed("/about");
              },
            ),
            GestureDetector(
              child: item(
                  Icon(
                    Icons.undo,
                    color: Color(0xffAD9413),
                  ),
                  "sign_out".tr),
              onTap: () {
                Get.offAllNamed("/signin");
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget item(icon, name) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Color(0x33ffffff),
      ),
      child: Row(
        children: [
          icon,
          SizedBox(
            width: 15,
          ),
          Text(
            name,
            style: TextStyle(
                color: AppColor.tinted_black,
                fontWeight: FontWeight.w700,
                fontSize: 14),
          ),
          Spacer(),
          Icon(
            Icons.arrow_forward_ios,
            color: AppColor.faded,
            size: 15,
          )
        ],
      ),
    );
  }
}
