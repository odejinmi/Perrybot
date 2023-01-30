import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perrybot/color/colors.dart';

import '../component/backarrow.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Backarrow(color: Color(0xffFF7CCB)),
        leadingWidth: 30,
        title: Text(
          "account".tr,
          style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: Color(0xff000E3B)),
        ),
        actions: [
          Container(
            height: 24,
            width: 24,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Color(0xff2255F8)),
            child: const Icon(
              Icons.play_arrow,
              size: 15,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            item("full_name".tr, "June Allen"),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              width: Get.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/perrybot/profile.png",
                    width: 84,
                    height: 84,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "June Allen",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "@illojune",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Color(0xff455764)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    decoration: BoxDecoration(
                        color: Color(0xffFF7CCB),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.edit),
                        SizedBox(
                          width: 10,
                        ),
                        Text("edit".tr)
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            item("full_name".tr, "June Allen"),
            item("username".tr, "June Allen"),
            item("email_address".tr, "Checkforjune@gmail.com"),
            item("phone".tr, "+1 0927635829"),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              decoration: BoxDecoration(
                  color: Color(0x26ff7ccb),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                children: [
                  Icon(Icons.undo_sharp),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "sign_out".tr,
                    style: TextStyle(
                      color: AppColor.tinted_black,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 10,
                  )
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
      margin: EdgeInsets.symmetric(vertical: 10),
      width: Get.width,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          color: Color(0x33ffffff),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 14,
                color: Color(0xff455764)),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            subtitle,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 14,
                color: Color(0xff212D33)),
          ),
        ],
      ),
    );
  }
}
