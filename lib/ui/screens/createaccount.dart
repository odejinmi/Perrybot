import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perrybot/color/colors.dart';

class Createaccount extends StatelessWidget {
  const Createaccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xffffffff),
            Color(0xffffffff),
            // Color(0xff9e9e),
            Color(0xffFF9E9E),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 100,
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
                "create_account".tr,
                style: TextStyle(
                    color: Color(0xff263238),
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "enter_your_email_address_and_phone_number".tr,
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
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffC4C4C4)),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "email_address".tr,
                      style: TextStyle(fontSize: 12, color: Color(0xff171E21)),
                    ),
                    TextFormField(
                      // obscureText: obscureText,
                      // controller: controller,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "e.g.you@email.com",
                        hintStyle: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff263238)),
                      ),
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
                        if (!GetUtils.isEmail(value)) {
                          return "Email is Invalid";
                        }

                        return null;
                      },
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffC4C4C4)),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "phone_number".tr,
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
                        if (!GetUtils.isEmail(value)) {
                          return "Email is Invalid";
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
              GestureDetector(
                child: Container(
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
                onTap: () {
                  Get.toNamed("/otp");
                },
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
