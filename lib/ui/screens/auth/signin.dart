import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:perrybot/app/app.dart';
import 'package:perrybot/core/core.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordContoller = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  //password visbility
  bool _passwordVisible = true;

  @override
  void initState() {
    super.initState();
    _passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color(0xffF8F988),
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
                        'Sign in',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: screenHeight(context) * 0.025),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        decoration: const BoxDecoration(
                            color: Color(0x69fbf7f7),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "email_address".tr,
                              style: const TextStyle(
                                  fontSize: 12, color: Color(0xff171E21)),
                            ),
                            TextFormField(
                              // obscureText: obscureText,
                              // controller: controller,
                              controller: emailController,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: "e.g.you@email.com",
                                hintStyle: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff263238)),
                                focusColor: PerryColors.white,
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
                      SizedBox(height: screenHeight(context) * 0.02),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        decoration: const BoxDecoration(
                            color: Color(0x69fbf7f7),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "password".tr,
                              style: const TextStyle(
                                  fontSize: 12, color: Color(0xff171E21)),
                            ),
                            TextFormField(
                              obscureText: _passwordVisible,
                              obscuringCharacter: '.',
                              controller: passwordContoller,
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
                                          ? const Icon(
                                              Icons.visibility_off_outlined,
                                              color: PerryColors.darkTone,
                                            )
                                          : const Icon(
                                              Icons.visibility,
                                              color: PerryColors.darkTone,
                                            ))),
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
                          title: 'Sign In',
                          color: PerryColors.secondaryYellow,
                          // disabled: emailController.text.length > 3 &&
                          //         passwordContoller.text.length > 4
                          //     ? false
                          //     : true,
                          onTap: (() {
                            Get.toNamed('/createaccount');
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
                              onTap: (() => Get.toNamed('/createaccount')),
                              child: TextBold(
                                'Create account',
                                fontSize: 18,
                                color: PerryColors.white,
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
