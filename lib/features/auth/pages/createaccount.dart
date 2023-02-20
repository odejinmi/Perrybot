import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:perrybot/app/app.dart';
import 'package:perrybot/app/styles/styles.dart';
import 'package:perrybot/color/colors.dart';
import 'package:perrybot/core/core.dart';

class Createaccount extends StatefulWidget {
  const Createaccount({Key? key}) : super(key: key);

  @override
  State<Createaccount> createState() => _CreateaccountState();
}

class _CreateaccountState extends State<Createaccount> {
  final TextEditingController emailController = TextEditingController();

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
                      Gap(screenHeight(context) * 0.04),
                      TextBold(
                        "create_account".tr,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        textAlign: TextAlign.center,
                      ),
                      Gap(screenHeight(context) * 0.02),
                      TextSemiBold(
                        "enter_your_email_address_and_phone_number".tr,
                      ),
                      SizedBox(height: screenHeight(context) * 0.025),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 2),
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffC4C4C4)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "email_address".tr,
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xff171E21)),
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
                      SizedBox(height: screenHeight(context) * 0.025),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffC4C4C4)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "phone_number".tr,
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xff171E21)),
                            ),
                            TextFormField(
                              obscureText: true,
                              // controller: controller,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "+1",
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
                      SizedBox(height: screenHeight(context) * 0.04),
                      BusyButton(
                          width: screenWidth(context) * 0.36,
                          title: "done".tr,
                          color: PerryColors.primaryPink,
                          // disabled: emailController.text.length > 3 &&
                          //         passwordContoller.text.length > 4
                          //     ? false
                          //     : true,
                          onTap: (() {
                            Get.toNamed("/otp");
                          })),
                      Gap(screenHeight(context) * 0.09),
                      TextSemiBold(
                        'Or use:',
                        textAlign: TextAlign.center,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                      Gap(screenHeight(context) * 0.015),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(AppAsset.facebook),
                          Gap(screenWidth(context) * 0.03),
                          SvgPicture.asset(AppAsset.apple),
                          Gap(screenWidth(context) * 0.03),
                          SvgPicture.asset(AppAsset.google)
                        ],
                      ),
                      SizedBox(height: screenHeight(context) * 0.04),
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
