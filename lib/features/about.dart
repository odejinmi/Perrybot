import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perrybot/color/colors.dart';

import '../app/widgets/backarrow.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primary_yellow,
        elevation: 0,
        leading: Backarrow(color: AppColor.primary_blue),
        leadingWidth: 30,
        title: Text(
          "about".tr,
          style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: Color(0xff000E3B)),
        ),
      ),
      body: Container(
        width: Get.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xffFF9E9E), Color(0xffF8F988)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
            image: DecorationImage(
                alignment: Alignment.bottomCenter,
                image:
                    AssetImage("assets/images/perrybot/aboutbackground.png"))),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                "about_details".tr,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
