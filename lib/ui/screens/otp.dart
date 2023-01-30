import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../color/colors.dart';

class Otp extends StatelessWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xffffffff),
            Color(0xffffffff),
            // Color(0xff9e9e),
            Color(0xffFF9E9E),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(
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
              const SizedBox(
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
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Perry",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 27),
                  ),
                ],
              ),
              const SizedBox(
                height: 80,
              ),
              Text(
                "confirm_otp".tr,
                style: const TextStyle(
                    color: Color(0xff263238),
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "we’ve_sent_a_6_digit_code_to_this_number".tr,
                style: const TextStyle(
                    color: Color(0xff263238),
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "+1 409 202 2409",
                style: TextStyle(
                    color: AppColor.primary_blue,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
                decoration: BoxDecoration(
                    border: Border.all(color: AppColor.primary_yellow),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "insert_code".tr,
                      style: const TextStyle(
                          fontSize: 12, color: Color(0xff171E21)),
                    ),
                    TextFormField(
                      // obscureText: obscureText,
                      // controller: controller,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "1234",
                        hintStyle: TextStyle(
                            letterSpacing: 15,
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff263238)),
                      ),
                      style: const TextStyle(
                          letterSpacing: 15,
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
              const SizedBox(
                height: 60,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(children: [
                      TextSpan(text: "didn’t_get_the_code? ".tr),
                      TextSpan(
                          text: "resend".tr,
                          style: TextStyle(color: AppColor.primary_blue)),
                    ]),
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text("change_phone_number".tr),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              GestureDetector(
                child: Container(
                  height: 54,
                  width: 146,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Text("done".tr),
                ),
                onTap: () {
                  Get.toNamed("/createpassword");
                },
              ),
              const Spacer(),
              Text.rich(
                TextSpan(children: [
                  TextSpan(text: "don’t_have_an_account? ".tr),
                  TextSpan(
                      text: "sign_in".tr,
                      style: TextStyle(color: AppColor.primary_blue)),
                ]),
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
