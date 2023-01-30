import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../component/backarrow.dart';

class Security extends StatelessWidget {
  const Security({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Backarrow(color: Color(0xffFF7CCB)),
        leadingWidth: 30,
        title: Text(
          "security".tr,
          style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: Color(0xff000E3B)),
        ),
        actions: const [
          Icon(
            Icons.security,
            color: Color(0xffF83C22),
          ),
        ],
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Text("login_settings".tr),
            item("email_address".tr, "June Allen"),
            item("phone_number".tr, "June Allen"),
            item("password".tr, "********"),
            SizedBox(
              height: 15,
            ),
            Text("quick_login_and_transaction".tr),
            item("4_digit_pin".tr, "********"),
            Container(
              width: Get.width,
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: const BoxDecoration(
                  color: Color(0xffEBEBEB),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
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
