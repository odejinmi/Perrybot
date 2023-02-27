import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:perrybot/app/app.dart';
import 'package:perrybot/app/styles/styles.dart';
import 'package:perrybot/app/ui_helpers.dart';
import 'package:perrybot/core/constants/constants.dart';
import 'package:perrybot/features/homepage/model/activities.dart';
import 'package:perrybot/features/subscriptions/pages/subscribeNow.dart';

import '../../../color/colors.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Activities> users = [
    Activities(
        title: "Bought Cherryhill Apartment 102",
        subtitle: "Real Estate",
        amount: " \$14,000.00",
        avatar: AppAsset.houseFill,
        time: "17, 02. 6:14 pm"),
    Activities(
        title: "You received a reward of",
        subtitle: "Affiliate",
        amount: " \$200",
        avatar: AppAsset.usersHand,
        time: "12, 08. 3:17 pm"),
    Activities(
        title: "Bought Cherryhill Apartment 102",
        subtitle: "Affiliate",
        amount: " \$14,000.00",
        avatar: AppAsset.usersHand,
        time: "17, 02. 6:14 pm"),
    Activities(
        title: "You received a reward of",
        subtitle: "BOT",
        amount: " \$200",
        avatar: AppAsset.usersHand,
        time: "12, 08. 3:17 pm"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Color(0xffFFFB9E).withOpacity(1),
        Color(0xffFFFEE1).withOpacity(0)
      ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      AppAsset.perryLogo,
                      width: 19,
                      height: 19,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    TextBold(
                      "Perry",
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const Spacer(),
                    Image.asset(
                      AppAsset.activities,
                      height: 18,
                      width: 18,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      child: Image.asset(
                        AppAsset.notification,
                        height: 18,
                        width: 18,
                      ),
                      onTap: () {
                        Get.toNamed("/notification");
                      },
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      child: Image.asset(
                        AppAsset.profile,
                        height: 18,
                        width: 18,
                      ),
                      onTap: () {
                        Get.toNamed("/account");
                      },
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      child: const Icon(
                        Icons.settings,
                        color: AppColor.faded,
                      ),
                      onTap: () {
                        Get.toNamed("/settings");
                      },
                    ),
                    const SizedBox(
                      width: 10,
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                TextSemiBold(
                  "welcome".tr,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 14),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        gradient: LinearGradient(
                            colors: [
                              const Color(0xffEBAC00).withOpacity(0.2),
                              const Color(0xffFF7CCB).withOpacity(0.2)
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter)),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextBold(
                              "academy".tr,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: PerryColors.faded,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextSemiBold(
                              "continue_learning".tr,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: PerryColors.tintedBlack,
                            ),
                          ],
                        ),
                        const Spacer(),
                        Image.asset(
                          AppAsset.academyPlay,
                          height: 50,
                          width: 50,
                        )
                      ],
                    ),
                  ),
                  onTap: () {
                    Get.toNamed("/academy");
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    TextSemiBold(
                      "upcoming_event".tr,
                      fontWeight: FontWeight.w700,
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 3),
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          gradient: LinearGradient(
                              colors: [Color(0xffebac00), Color(0xffff7ccb)],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            AppAsset.seeNewEvents,
                            width: 15,
                            height: 15,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          TextSmall(
                            "see_new_events".tr,
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    gradient: LinearGradient(
                        colors: [Color(0x00ff7ccb), Color(0xffF8DF5F)],
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        AppAsset.bananabootcamp,
                        height: 59,
                        width: 59,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextSemiBold(
                            "Banana Bootcamp",
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          TextSemiBold(
                            "19th, August 2023",
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 3),
                                child: const Text(
                                  "Crypto",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400, fontSize: 8),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 3),
                                child: const Text(
                                  "Real estate",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400, fontSize: 8),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextSemiBold(
                  "quick_actions".tr,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    TouchableOpacity(
                      onTap: (() {
                        Get.to(SubscribeNow());
                      }),
                      child: Column(
                        children: [
                          Image.asset(
                            AppAsset.quickToActionInvest,
                            height: 34,
                            width: 34,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextSemiBold(
                            "invest".tr,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Image.asset(
                          "assets/images/perrybot/quickactionaffiliates.png",
                          height: 34,
                          width: 34,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextSemiBold(
                          "affiliates".tr,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        )
                      ],
                    ),
                  ],
                ),
                Gap(screenHeight(context) * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextBold("Activities",
                        fontSize: 14, fontWeight: FontWeight.w700),
                    SvgPicture.asset(AppAsset.forwardArrowBlack)
                  ],
                ),
                Flexible(
                  child: ListView(
                    children: users.map((userone) {
                      return ListTile(
                        leading: SvgPicture.asset(
                          userone.avatar,
                          width: 40,
                        ),
                        title: RichText(
                          softWrap: true,
                          maxLines: 2,
                          text: TextSpan(
                            text: userone.title,
                            style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: PerryColors.tintedBlack),
                            children: <TextSpan>[
                              TextSpan(
                                  text: userone.amount,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: PerryColors.primaryGreen)),
                            ],
                          ),
                        ),
                        subtitle: Row(
                          children: [
                            TextSemiBold(
                              userone.subtitle,
                              color: PerryColors.primaryBlue,
                              fontSize: 12,
                            ),
                            Gap(screenWidth(context) * 0.04),
                            TextSemiBold(
                              userone.time,
                              fontSize: 12,
                              color: PerryColors.faded,
                            )
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
