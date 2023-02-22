import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:perrybot/app/app.dart';
import 'package:perrybot/app/styles/fonts.dart';
import 'package:perrybot/core/core.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class DetailsBottomSheet {
  static void propertyDetailsBottomSheet(context) {
    Size size = MediaQuery.of(context).size;
    showModalBottomSheet(
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0),
        ),
        context: context,
        builder: (BuildContext bc) {
          return Wrap(
            children: [
              Container(
                height: size.height * 0.8,
                decoration: const BoxDecoration(
                  color: Color(0xffF8F5F5),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15.0),
                    topLeft: Radius.circular(15.0),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Stack(
                    children: [
                      ListView(
                        physics: const ClampingScrollPhysics(),
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextBold(
                                "Property Details",
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: PerryColors.tintedBlack,
                              ),
                              TouchableOpacity(
                                onTap: () {
                                  Get.back();
                                },
                                child: TextSemiBold(
                                  "Close",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: PerryColors.faded,
                                ),
                              )
                            ],
                          ),
                          Gap(screenHeight(context) * 0.03),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Chip(
                                shape: const StadiumBorder(
                                    side: BorderSide(
                                        width: 1, color: PerryColors.faded)),
                                label: SizedBox(
                                  width: screenWidth(context) * 0.27,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      TextSemiBold(
                                        'Buy & Rent',
                                        color: PerryColors.darkTone,
                                      ),
                                      SvgPicture.asset(AppAsset.bag)
                                    ],
                                  ),
                                ),
                                backgroundColor: PerryColors.white,
                              ),
                              Gap(screenHeight(context) * 0.01),
                              TextSemiBold(
                                "Location",
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                              Gap(screenHeight(context) * 0.007),
                              TextSemiBold(
                                "507 Jocelyn Throughway, Kuvalismouth, Monaco, 37859-9309",
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                              Gap(screenHeight(context) * 0.02),
                              StaggeredGrid.count(
                                crossAxisCount: 6,
                                mainAxisSpacing: 0,
                                crossAxisSpacing: 0,
                                children: [
                                  StaggeredGridTile.count(
                                      crossAxisCellCount: 1,
                                      mainAxisCellCount: 1,
                                      child: Container(
                                        width: 75,
                                        height: 60,
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 6, horizontal: 5),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 1,
                                                color: PerryColors.primaryPink),
                                            color: PerryColors.white),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            TextSemiBold(
                                              "15",
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                              color: PerryColors.primaryPink,
                                            ),
                                            TextSemiBold(
                                              "No Units",
                                              fontSize: 10,
                                              fontWeight: FontWeight.w600,
                                            )
                                          ],
                                        ),
                                      )),
                                  StaggeredGridTile.count(
                                      crossAxisCellCount: 2,
                                      mainAxisCellCount: 1,
                                      child: Container(
                                        width: 100,
                                        height: 60,
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 6, horizontal: 5),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 1,
                                                color: PerryColors.primaryPink),
                                            color: PerryColors.white),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            TextSemiBold(
                                              "5,281 sq. ft.",
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                              color: PerryColors.primaryPink,
                                            ),
                                            TextSemiBold(
                                              "Size",
                                              fontSize: 10,
                                              fontWeight: FontWeight.w600,
                                            )
                                          ],
                                        ),
                                      )),
                                  StaggeredGridTile.count(
                                      crossAxisCellCount: 2,
                                      mainAxisCellCount: 1,
                                      child: Container(
                                        width: 100,
                                        height: 60,
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 6, horizontal: 5),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 1,
                                                color: PerryColors.primaryPink),
                                            color: PerryColors.white),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            TextSemiBold(
                                              "Residential",
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                              color: PerryColors.primaryPink,
                                            ),
                                            TextSemiBold(
                                              "Type",
                                              fontSize: 10,
                                              fontWeight: FontWeight.w600,
                                            )
                                          ],
                                        ),
                                      )),
                                  StaggeredGridTile.count(
                                      crossAxisCellCount: 1,
                                      mainAxisCellCount: 1,
                                      child: Container(
                                        width: 100,
                                        height: 60,
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 6, horizontal: 5),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 1,
                                                color: PerryColors.primaryPink),
                                            color: PerryColors.white),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            TextSemiBold(
                                              "3",
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                              color: PerryColors.primaryPink,
                                            ),
                                            TextSemiBold(
                                              "Cap Rate",
                                              fontSize: 10,
                                              fontWeight: FontWeight.w600,
                                            )
                                          ],
                                        ),
                                      )),
                                  StaggeredGridTile.count(
                                      crossAxisCellCount: 1,
                                      mainAxisCellCount: 1,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 6, horizontal: 5),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 1,
                                                color: PerryColors.primaryPink),
                                            color: PerryColors.white),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            TextSemiBold(
                                              "1",
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                              color: PerryColors.primaryPink,
                                            ),
                                            TextSemiBold(
                                              "No. stories",
                                              fontSize: 10,
                                              fontWeight: FontWeight.w600,
                                            )
                                          ],
                                        ),
                                      )),
                                  StaggeredGridTile.count(
                                      crossAxisCellCount: 2,
                                      mainAxisCellCount: 1,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 6, horizontal: 5),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 1,
                                                color: PerryColors.primaryPink),
                                            color: PerryColors.white),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            TextSemiBold(
                                              "1997",
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                              color: PerryColors.primaryPink,
                                            ),
                                            TextSemiBold(
                                              "Year Built",
                                              fontSize: 10,
                                              fontWeight: FontWeight.w600,
                                            )
                                          ],
                                        ),
                                      )),
                                  StaggeredGridTile.count(
                                      crossAxisCellCount: 1,
                                      mainAxisCellCount: 1,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 6, horizontal: 5),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 1,
                                                color: PerryColors.primaryPink),
                                            color: PerryColors.white),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            TextSemiBold(
                                              "59",
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                              color: PerryColors.primaryPink,
                                            ),
                                            TextSemiBold(
                                              "Walkscore",
                                              fontSize: 10,
                                              fontWeight: FontWeight.w600,
                                            )
                                          ],
                                        ),
                                      )),
                                  StaggeredGridTile.count(
                                      crossAxisCellCount: 2,
                                      mainAxisCellCount: 1,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 6, horizontal: 5),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 1,
                                                color: PerryColors.primaryPink),
                                            color: PerryColors.white),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            TextSemiBold(
                                              "0.31/1,000 SF",
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                              color: PerryColors.primaryPink,
                                            ),
                                            TextSemiBold(
                                              "Parking Ratio",
                                              fontSize: 10,
                                              fontWeight: FontWeight.w600,
                                            )
                                          ],
                                        ),
                                      )),
                                ],
                              ),
                              Gap(screenHeight(context) * 0.02),
                              TextSemiBold(
                                "Description",
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                              Gap(screenHeight(context) * 0.007),
                              const Text(
                                "Luxurious and upgraded, this 4 bedroom, 4.5 bathroom home of 5,281 sq. ft. (including poolhouse, per independent third-party measurement) rests on a lot of 1.23 acres (per county) on a peaceful cul-de-sac in the Lakeside neighborhood. Richly-appointed spaces include large gathering areas, a bright, professional-grade kitchen, spectacular dining room, two walk-out master suites, and a home theater. Contemporary amenities include solar PV and a Tesla EV charging station. The expansive backyard includes a sparkling pool and spa plus a comfortable poolhouse all in private, verdant surroundings. You’ll appreciate the short drive to downtown Los Altos, Rancho Shopping Center, access to Interstate 280, and numerous parks and preserves.",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Gap(screenHeight(context) * 0.02),
                            ],
                          ),
                          Gap(screenHeight(context) * 0.04),
                        ],
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 8),
                          width: double.infinity,
                          height: screenHeight(context) * 0.04,
                          decoration: const BoxDecoration(
                            color: PerryColors.white,
                          ),
                          child: TextSemiBold("Co - owners",
                              textAlign: TextAlign.left,
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          );
        });
  }
}
