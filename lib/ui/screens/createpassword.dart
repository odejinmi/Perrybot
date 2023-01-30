import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../color/colors.dart';

class Createpassword extends StatelessWidget {
  const Createpassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xffffffff),
            Color(0xffffffff),
            Color(0xffFF9E9E),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  GestureDetector(
                    child: Container(
                      height: 32,
                      width: 32,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: AppColor.ash, shape: BoxShape.circle),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: AppColor.faded,
                        size: 10,
                      ),
                    ),
                    onTap: () {
                      Get.back();
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    "assets/images/perrybot/logo.png",
                    height: 29,
                    width: 29,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Perry",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 27),
                  ),
                ],
              ),
              SizedBox(
                height: 80,
              ),
              Text(
                "create_password".tr,
                style: TextStyle(
                    color: Color(0xff263238),
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "must_contain_a_special_character_and_camel_case".tr,
                style: TextStyle(
                    color: Color(0xff263238),
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: BoxDecoration(
                    color: Color(0x69fbf7f7),
                    border: Border.all(color: Color(0xffC4C4C4)),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "create_password".tr,
                      style: TextStyle(fontSize: 12, color: Color(0xff171E21)),
                    ),
                    TextFormField(
                      obscureText: true,
                      // controller: controller,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "......",
                          hintStyle: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff263238)),
                          suffixIcon: Icon(Icons.visibility)),
                      style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff263238)),
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (v) {},
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "This field can't be empty";
                        }

                        return null;
                      },
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "confirm_password".tr,
                style: TextStyle(
                    color: Color(0xff263238),
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: BoxDecoration(
                    color: Color(0x69fbf7f7),
                    border: Border.all(color: Color(0xffC4C4C4)),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "repeat_password".tr,
                      style: TextStyle(fontSize: 12, color: Color(0xff171E21)),
                    ),
                    TextFormField(
                      obscureText: true,
                      // controller: controller,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "......",
                          hintStyle: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff263238)),
                          suffixIcon: Icon(Icons.visibility)),
                      style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff263238)),
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (v) {},
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "This field can't be empty";
                        }

                        return null;
                      },
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                height: 54,
                width: 146,
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Text("done".tr),
              ),
              Spacer(),
              Text.rich(
                TextSpan(children: [
                  TextSpan(text: "don’t_have_an_account? ".tr),
                  TextSpan(
                      text: "sign_in".tr,
                      style: TextStyle(color: AppColor.primary_blue)),
                ]),
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
