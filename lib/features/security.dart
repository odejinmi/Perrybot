import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perrybot/app/styles/fonts.dart';

import '../app/widgets/backarrow.dart';

class Security extends StatelessWidget {
  const Security({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1F6FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Backarrow(color: Color(0xffFF7CCB)),
        ),
        title: Text(
          "security".tr,
          style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: Color(0xff000E3B)),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.security,
              color: Color(0xffF83C22),
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            TextBold(
              "login_settings".tr,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
            item("email_address".tr, "June Allen"),
            item("phone_number".tr, "June Allen"),
            item("password".tr, "********"),
            SizedBox(
              height: 15,
            ),
            TextBold(
              "quick_login_and_transaction".tr,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
            item("4_digit_pin".tr, "********"),
            Container(
              width: Get.width,
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: const BoxDecoration(
                  color: Color(0xffEBEBEB),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Row(
                children: [
                  Icon(Icons.fingerprint),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "biometric".tr,
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  const Spacer(),
                  Switch.adaptive(value: false, onChanged: (v) {}),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget item(title, subtitle) {
    return Container(
      width: Get.width,
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: const BoxDecoration(
          color: Color(0xffEBEBEB),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: Color(0xff171E21)),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            subtitle,
            style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: Color(0xff212D33)),
          ),
        ],
      ),
    );
  }
}
