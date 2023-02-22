import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:perrybot/app/app.dart';
import 'package:perrybot/app/styles/styles.dart';
import 'package:perrybot/app/widgets/backarrow.dart';
import 'package:perrybot/core/core.dart';
import 'package:perrybot/features/realEstate/widgets/chatDetails.dart';
import 'package:perrybot/features/realEstate/widgets/chatMessage.dart';

class ChatInvestment extends StatelessWidget {
  const ChatInvestment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PerryColors.secondaryPurple,
        elevation: 0,
        leading: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset(AppAsset.chat)),
        title: TextBold(
          "Jamine 4 Bedroom Flat, Boston",
          fontWeight: FontWeight.w700,
          fontSize: 14,
          color: PerryColors.white,
        ),
        actions: [
          TouchableOpacity(
              onTap: (() => Get.back()),
              child: const Padding(
                  padding: EdgeInsets.all(8.0), child: Icon(Icons.close))),
        ],
      ),
      body: SafeArea(
          child: Stack(children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 2, 15, 5),
          child: ListView(
            children: [
              Column(
                children: [
                  chatDetails(
                      "Corridor_man", AppAsset.chatAvatar, "11:23 am", context),
                  Gap(screenHeight(context) * 0.01),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 13, horizontal: 10),
                      decoration: BoxDecoration(
                          color: PerryColors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            softWrap: true,
                            textScaleFactor: 1,
                            text: const TextSpan(
                              text: "Black Magic_agent69 ",
                              style: TextStyle(
                                  color: Color(0xff2255F8),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                              children: <TextSpan>[
                                TextSpan(
                                    text: "Magic how body?",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              Gap(screenHeight(context) * 0.03),
              //second box
              Column(
                children: [
                  chatDetails(
                      "Elder_kunle", AppAsset.chatAvatar, "11:25 am", context),
                  Gap(screenHeight(context) * 0.01),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 13, horizontal: 10),
                      decoration: BoxDecoration(
                          color: PerryColors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            softWrap: true,
                            textScaleFactor: 1,
                            text: const TextSpan(
                              text: "",
                              style: TextStyle(
                                  color: Color(0xff2255F8),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                              children: <TextSpan>[
                                TextSpan(
                                    text: "Hello Guys",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Gap(screenHeight(context) * 0.03),
              //third box
              Column(
                children: [
                  chatDetails("Black Magic_agent69", AppAsset.chatAvatar,
                      "11:24 am", context),
                  Gap(screenHeight(context) * 0.01),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 13, horizontal: 10),
                      decoration: BoxDecoration(
                          color: PerryColors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            softWrap: true,
                            textScaleFactor: 1,
                            text: const TextSpan(
                              text: "Corridor_man ",
                              style: TextStyle(
                                  color: Color(0xff2255F8),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                              children: <TextSpan>[
                                TextSpan(
                                    text: "body dey sweet me",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Gap(screenHeight(context) * 0.01),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 13, horizontal: 10),
                      decoration: BoxDecoration(
                          color: PerryColors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            softWrap: true,
                            textScaleFactor: 1,
                            text: const TextSpan(
                              text: "Hey ",
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                              children: <TextSpan>[
                                TextSpan(
                                    text: "Elder_kunle",
                                    style: TextStyle(
                                        color: Color(0xff2255F8),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Gap(screenHeight(context) * 0.03),
              //third box
              Column(
                children: [
                  chatDetails("Black Magic_agent69", AppAsset.chatAvatar,
                      "11:26 am", context),
                  Gap(screenHeight(context) * 0.01),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 13, horizontal: 10),
                      decoration: BoxDecoration(
                          color: const Color(0xffDBE3E9),
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            softWrap: true,
                            textScaleFactor: 1,
                            text: const TextSpan(
                              text: "Corridor_man ",
                              style: TextStyle(
                                  color: Color(0xff2255F8),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                              children: <TextSpan>[
                                TextSpan(
                                    text: "body dey sweet me",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Gap(screenHeight(context) * 0.01),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        const Icon(
                          Icons.reply,
                          color: Color(0xffDBE3E9),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 13, horizontal: 10),
                          decoration: BoxDecoration(
                              color: PerryColors.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.emoji_emotions,
                                color: PerryColors.secondaryYellow,
                              ),
                              const Gap(5),
                              RichText(
                                softWrap: true,
                                textScaleFactor: 1,
                                text: const TextSpan(
                                  text: "You must be sick",
                                  style: TextStyle(
                                      color: Color(0xff000000),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: "",
                                        style: TextStyle(
                                            color: Color(0xff2255F8),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Gap(screenHeight(context) * 0.03),
              //third box
              Column(
                children: [
                  chatDetails("Papi", AppAsset.chatAvatar, "11:24 am", context),
                  Gap(screenHeight(context) * 0.01),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 13, horizontal: 10),
                      decoration: BoxDecoration(
                          color: PerryColors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            child: RichText(
                              softWrap: true,
                              text: const TextSpan(
                                text: "Will Somebody tell ",
                                style: TextStyle(
                                    color: Color(0xff000000),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: "madam_social231 ",
                                      style: TextStyle(
                                          color: Color(0xff2255F8),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400)),
                                  TextSpan(
                                      text:
                                          "to fund her wallet? Her line has been off since weekend.",
                                      style: TextStyle(
                                          color: Color(0xff000000),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400)),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Gap(screenHeight(context) * 0.03),
              //third box
              Column(
                children: [
                  chatDetails("Sunny Akindele", AppAsset.chatAvatar, "11:31 am",
                      context),
                  Gap(screenHeight(context) * 0.01),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 13, horizontal: 10),
                      decoration: BoxDecoration(
                          color: PerryColors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            softWrap: true,
                            textScaleFactor: 1,
                            text: const TextSpan(
                              text: "",
                              style: TextStyle(
                                  color: Color(0xff2255F8),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                              children: <TextSpan>[
                                TextSpan(
                                    text:
                                        "Maybe she lost her phone or something",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 13, horizontal: 10),
                      decoration: BoxDecoration(
                          color: PerryColors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            softWrap: true,
                            textScaleFactor: 1,
                            text: const TextSpan(
                              text: "Have you tried calling her brother ",
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                              children: <TextSpan>[
                                TextSpan(
                                    text: "Papi",
                                    style: TextStyle(
                                        color: Color(0xff2255F8),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400)),
                                TextSpan(
                                    text: "?",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              width: double.infinity,
              height: screenHeight(context) * 0.08,
              decoration: const BoxDecoration(
                color: Color(0xffFFE5F5),
              ),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: PerryColors.white,
                  filled: true,
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 0.0, color: Colors.transparent),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              )),
        )
      ])),
    );
  }
}
