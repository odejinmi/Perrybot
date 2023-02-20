import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:perrybot/app/app.dart';
import 'package:perrybot/app/styles/fonts.dart';
import 'package:perrybot/app/styles/styles.dart';
import 'package:perrybot/core/core.dart';
import 'package:perrybot/features/component/successWidget.dart';

class ModalBottomSheet {
  static void moreModalBottomSheet(context) {
    Size size = MediaQuery.of(context).size;
    showModalBottomSheet(
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0),
        ),
        context: context,
        builder: (BuildContext bc) {
          return Wrap(children: [
            Container(
              height: size.height * 0.8,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15.0),
                  topLeft: Radius.circular(15.0),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Stack(children: [
                  ListView(
                    physics: const ClampingScrollPhysics(),
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextBold(
                            "Black Christmas",
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: PerryColors.tintedBlack,
                          ),
                          TouchableOpacity(
                            onTap: () {
                              Get.back();
                            },
                            child: TextSemiBold(
                              "Cancel",
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: PerryColors.faded,
                            ),
                          )
                        ],
                      ),
                      Gap(screenHeight(context) * 0.04),
                      Container(
                          height: screenHeight(context) * 0.4,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(AppAsset.christmas),
                                fit: BoxFit.cover),
                          )),
                      Row(
                        children: [
                          Chip(
                            shape: const StadiumBorder(
                                side: BorderSide(
                                    width: 1, color: PerryColors.darkTone)),
                            label: TextSemiBold(
                              'Live Event',
                              color: PerryColors.white,
                            ),
                            backgroundColor: PerryColors.darkTone,
                          ),
                          Gap(screenWidth(context) * 0.02),
                          Chip(
                            shape: const StadiumBorder(
                                side: BorderSide(
                                    width: 1, color: PerryColors.faded)),
                            label: TextSemiBold(
                              'Crypto',
                              color: PerryColors.darkTone,
                            ),
                            backgroundColor: PerryColors.white,
                          ),
                          Gap(screenWidth(context) * 0.02),
                          Chip(
                            shape: const StadiumBorder(
                                side: BorderSide(
                                    width: 1, color: PerryColors.faded)),
                            label: TextSemiBold(
                              'Real estate',
                              color: PerryColors.darkTone,
                            ),
                            backgroundColor: PerryColors.white,
                          ),
                        ],
                      ),
                      Gap(screenWidth(context) * 0.06),
                      TextBold(
                        "Address",
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: PerryColors.faded,
                      ),
                      Gap(screenWidth(context) * 0.04),
                      TextBold(
                        "19th, August 2023",
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: PerryColors.faded,
                      ),
                      Gap(screenWidth(context) * 0.06),
                      TextBold(
                        "Time",
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: PerryColors.faded,
                      ),
                      Gap(screenWidth(context) * 0.04),
                      TextBold(
                        "16:29 GMT",
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: PerryColors.faded,
                      ),
                      Gap(screenWidth(context) * 0.06),
                      TextBold(
                        "Description",
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: PerryColors.faded,
                      ),
                      Gap(screenWidth(context) * 0.01),
                      TextBold(
                        "Luxurious and upgraded, this 4 bedroom, 4.5 bathroom home of 5,281 sq. ft. (including poolhouse, per independent third-party measurement) rests on a lot of 1.23 acres (per county) on a peaceful cul-de-sac in the Lakeside neighborhood. Richly-appointed spaces include large gathering areas, a bright, professional-grade kitchen, spectacular dining room, two walk-out master suites, and a home theater. Contemporary amenities include solar PV and a Tesla EV charging station. The expansive backyard includes a sparkling pool and spa plus a comfortable poolhouse all in private, verdant surroundings. You’ll appreciate the short drive to downtown Los Altos, Rancho Shopping Center, access to Interstate 280, and numerous parks and preserves.",
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: PerryColors.tintedBlack,
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 7),
                      child: BusyButton(
                          height: screenHeight(context) * 0.05,
                          title: "Register",
                          color: PerryColors.primaryPink,
                          onTap: (() async {
                            Get.back();
                            SuccessModalBottomSheet.moreModalBottomSheet(
                                context);
                          })),
                    ),
                  ),
                ]),
              ),
            ),
          ]);
        });
  }

  //registered events modal
  static void registeredEventModalBottomSheet(context) {
    Size size = MediaQuery.of(context).size;
    showModalBottomSheet(
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0),
        ),
        context: context,
        builder: (BuildContext bc) {
          return Wrap(children: [
            Container(
              height: size.height * 0.8,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15.0),
                  topLeft: Radius.circular(15.0),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Stack(children: [
                  ListView(
                    physics: const ClampingScrollPhysics(),
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextBold(
                            "Black Christmas",
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: PerryColors.tintedBlack,
                          ),
                          TouchableOpacity(
                            onTap: () {
                              Get.back();
                            },
                            child: TextSemiBold(
                              "Cancel",
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: PerryColors.faded,
                            ),
                          )
                        ],
                      ),
                      Gap(screenHeight(context) * 0.04),
                      Container(
                          height: screenHeight(context) * 0.4,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(AppAsset.bananabootcamp),
                                fit: BoxFit.cover),
                          )),
                      Row(
                        children: [
                          Chip(
                            shape: const StadiumBorder(
                                side: BorderSide(
                                    width: 1, color: PerryColors.tintedBlack)),
                            label: TextSemiBold(
                              'Online',
                              color: PerryColors.darkTone,
                            ),
                            backgroundColor: PerryColors.tradeGreen,
                          ),
                          Gap(screenWidth(context) * 0.02),
                          Chip(
                            shape: const StadiumBorder(
                                side: BorderSide(
                                    width: 1, color: PerryColors.faded)),
                            label: TextSemiBold(
                              'Crypto',
                              color: PerryColors.darkTone,
                            ),
                            backgroundColor: PerryColors.white,
                          ),
                          Gap(screenWidth(context) * 0.02),
                          Chip(
                            shape: const StadiumBorder(
                                side: BorderSide(
                                    width: 1, color: PerryColors.faded)),
                            label: TextSemiBold(
                              'Real estate',
                              color: PerryColors.darkTone,
                            ),
                            backgroundColor: PerryColors.white,
                          ),
                        ],
                      ),
                      Gap(screenWidth(context) * 0.06),
                      TextBold(
                        "Time",
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: PerryColors.faded,
                      ),
                      Gap(screenWidth(context) * 0.04),
                      TextBold(
                        "16:29 GMT",
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: PerryColors.faded,
                      ),
                      Gap(screenWidth(context) * 0.06),
                      TextBold(
                        "Description",
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: PerryColors.faded,
                      ),
                      Gap(screenWidth(context) * 0.01),
                      TextBold(
                        "Come and join us as we learn about banana.",
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: PerryColors.tintedBlack,
                      ),
                      Gap(screenWidth(context) * 0.3),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 7),
                        child: TouchableOpacity(
                          child: Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  color: PerryColors.tradeGreen,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextBold(
                                    "REGISTERED",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  Gap(screenWidth(context) * 0.006),
                                  Image.asset(
                                    AppAsset.yellowTick,
                                    width: 20,
                                    height: 15,
                                  )
                                ],
                              )),
                        )),
                  ),
                ]),
              ),
            ),
          ]);
        });
  }
}
