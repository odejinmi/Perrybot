import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:perrybot/app/app.dart';
import 'package:perrybot/app/styles/styles.dart';
import 'package:perrybot/core/core.dart';
import 'package:perrybot/features/auth/createName.dart';

import '../../color/colors.dart';

class Createpassword extends StatefulWidget {
  const Createpassword({Key? key}) : super(key: key);

  @override
  State<Createpassword> createState() => _CreatepasswordState();
}

class _CreatepasswordState extends State<Createpassword> {
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  //password visbility
  bool _passwordVisible = true;
  bool _passwordVisible2 = true;

  @override
  void initState() {
    super.initState();
    _passwordVisible = true;
    _passwordVisible2 = true;
  }

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
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
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
                        "create_password".tr,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        textAlign: TextAlign.center,
                      ),
                      Gap(screenHeight(context) * 0.02),
                      TextSemiBold(
                        "must_contain_a_special_character_and_camel_case".tr,
                        color: PerryColors.primaryBlue,
                      ),
                      SizedBox(height: screenHeight(context) * 0.025),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        decoration: BoxDecoration(
                            color: const Color(0x69fbf7f7),
                            border: Border.all(color: const Color(0xffC4C4C4)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "create_password".tr,
                              style: const TextStyle(
                                  fontSize: 12, color: Color(0xff171E21)),
                            ),
                            TextFormField(
                              obscureText: _passwordVisible,
                              obscuringCharacter: '*',
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "......",
                                  hintStyle: const TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff263238)),
                                  suffixIcon: TouchableOpacity(
                                      onTap: (() {
                                        setState(() {
                                          _passwordVisible = !_passwordVisible;
                                        });
                                      }),
                                      child: _passwordVisible
                                          ? const Icon(Icons.visibility)
                                          : const Icon(
                                              Icons.visibility_off_outlined))),
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
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "confirm_password".tr,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                              color: Color(0xff263238),
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        decoration: BoxDecoration(
                            color: const Color(0x69fbf7f7),
                            border: Border.all(color: const Color(0xffC4C4C4)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "repeat_password".tr,
                              style: const TextStyle(
                                  fontSize: 12, color: Color(0xff171E21)),
                            ),
                            TextFormField(
                              obscureText: _passwordVisible2,
                              obscuringCharacter: '*',
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "......",
                                  hintStyle: const TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff263238)),
                                  suffixIcon: TouchableOpacity(
                                      onTap: (() {
                                        setState(() {
                                          _passwordVisible2 =
                                              !_passwordVisible2;
                                        });
                                      }),
                                      child: _passwordVisible2
                                          ? const Icon(Icons.visibility)
                                          : const Icon(
                                              Icons.visibility_off_outlined))),
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
                            Get.to(CreateName());
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
