import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:perrybot/app/app.dart';
import 'package:perrybot/core/core.dart';

import '../../color/colors.dart';

class Otp extends StatelessWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color(0xffffffff),
          Color(0xffffffff),
          // Color(0xff9e9e),
          Color(0xffFF9E9E),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: SizedBox(
                child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        alignment: Alignment.topRight,
                        child: TouchableOpacity(
                            onTap: (() {
                              Get.back();
                            }),
                            child: SvgPicture.asset(AppAsset.closeIcon)),
                      ),
                      Gap(screenHeight(context) * 0.05),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(AppAsset.perryLogo),
                          Gap(screenWidth(context) * 0.015),
                          TextBold(
                            'Perry',
                            fontSize: 29,
                            fontWeight: FontWeight.w700,
                          )
                        ],
                      ),
                      Gap(screenHeight(context) * 0.1),
                      TextBold(
                        "confirm_otp".tr,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        textAlign: TextAlign.center,
                      ),
                      Gap(screenHeight(context) * 0.02),
                      TextSemiBold(
                        "we’ve_sent_a_6_digit_code_to_this_number".tr,
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
                      SizedBox(height: screenHeight(context) * 0.025),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 2),
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColor.primary_yellow),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
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
                      SizedBox(height: screenHeight(context) * 0.04),
                      Row(
                        children: [
                          TextBold(
                            'Didn’t get the code?',
                            fontSize: 14,
                          ),
                          Gap(screenWidth(context) * 0.007),
                          TouchableOpacity(
                              onTap: (() {}),
                              child: TextBold(
                                'Resend',
                                fontSize: 14,
                                color: PerryColors.primaryBlue,
                              ))
                        ],
                      ),
                      Gap(screenHeight(context) * 0.01),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: TouchableOpacity(
                            child: TextBold('Change the email address',
                                textAlign: TextAlign.left, fontSize: 14)),
                      ),
                      Gap(screenHeight(context) * 0.08),
                      BusyButton(
                          width: screenWidth(context) * 0.36,
                          title: "done".tr,
                          color: PerryColors.primaryPink,
                          // disabled: emailController.text.length > 3 &&
                          //         passwordContoller.text.length > 4
                          //     ? false
                          //     : true,
                          onTap: (() {
                            Get.toNamed("/createpassword");
                          })),
                      Gap(screenHeight(context) * 0.05),
                      Column(
                        children: [
                          TextBold(
                            'Don’t have an account?',
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                          TouchableOpacity(
                              child: TextBold(
                            'Sign in',
                            fontSize: 18,
                            color: PerryColors.primaryBlue,
                          ))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
