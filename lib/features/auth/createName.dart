import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:perrybot/app/app.dart';
import 'package:perrybot/app/styles/styles.dart';
import 'package:perrybot/core/core.dart';
import 'package:get/get.dart';
import 'package:perrybot/features/auth/uploadPhoto.dart';

class CreateName extends StatelessWidget {
  const CreateName({super.key});

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
                      Gap(screenHeight(context) * 0.2),
                      TextBold(
                        "Please tell us your name".tr,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        textAlign: TextAlign.center,
                      ),
                      Gap(screenHeight(context) * 0.02),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 2),
                        decoration: BoxDecoration(
                            color: Color(0xffFFFDF2),
                            border: Border.all(color: const Color(0xffC4C4C4)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "full_name".tr,
                              style: const TextStyle(
                                  fontSize: 12, color: Color(0xff171E21)),
                            ),
                            TextFormField(
                              // obscureText: obscureText,
                              // controller: controller,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: "Goodluck",
                                hintStyle: TextStyle(
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
                                return null;
                              },
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: screenHeight(context) * 0.025),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        decoration: BoxDecoration(
                            color: Color(0xffFFFDF2),
                            border: Border.all(color: const Color(0xffC4C4C4)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "last_name".tr,
                              style: const TextStyle(
                                  fontSize: 12, color: Color(0xff171E21)),
                            ),
                            TextFormField(
                              obscureText: true,
                              // controller: controller,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: "Allen",
                                hintStyle: TextStyle(
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
                      SizedBox(height: screenHeight(context) * 0.08),
                      BusyButton(
                          width: screenWidth(context) * 0.36,
                          title: "done".tr,
                          color: PerryColors.primaryPink,
                          // disabled: emailController.text.length > 3 &&
                          //         passwordContoller.text.length > 4
                          //     ? false
                          //     : true,
                          onTap: (() {
                            Get.to(const UploadPhoto());
                          })),
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
