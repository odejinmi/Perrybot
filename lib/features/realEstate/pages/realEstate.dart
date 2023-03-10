import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:perrybot/app/app.dart';
import 'package:perrybot/app/styles/styles.dart';
import 'package:perrybot/app/ui_helpers.dart';
import 'package:perrybot/app/widgets/touchable_opacity.dart';
import 'package:perrybot/core/core.dart';
import 'package:perrybot/features/realEstate/pages/investmentGroup.dart';
import 'package:perrybot/features/realEstate/pages/singleInvestment.dart';
import 'package:perrybot/features/realEstate/widgets/investSidepanel.dart';

class RealEstate extends StatelessWidget {
  const RealEstate({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          const Color(0xffFEA9FB).withOpacity(1),
          const Color(0xffF988F4).withOpacity(0),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
      ),
      child: Scaffold(
        key: _scaffoldState,
        backgroundColor: Colors.transparent,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(AppAsset.perryLogo),
                        Gap(screenWidth(context) * 0.009),
                        RichText(
                            text: const TextSpan(
                                text: 'Perry',
                                style: TextStyle(
                                    color: Color(0xff192B47),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20),
                                children: <TextSpan>[
                              TextSpan(
                                  text: 'Invest',
                                  style: TextStyle(color: Color(0xffC27DE2)))
                            ]))
                      ],
                    ),
                    TouchableOpacity(
                        onTap: (() {
                          _scaffoldState.currentState!.openEndDrawer();
                        }),
                        child: SvgPicture.asset(AppAsset.threeDotsMenu))
                  ],
                ),
                Gap(screenHeight(context) * 0.03),
                TouchableOpacity(
                  onTap: (() {
                    Get.to(InvestmentGroup());
                  }),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    height: 110,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: const Color(0xff9747FF),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextSemiBold(
                              'Find investment groups',
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: PerryColors.white,
                            ),
                            SvgPicture.asset(AppAsset.forwardArrow)
                          ],
                        ),
                        Row(
                          children: [
                            Pills(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 7, horizontal: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: const Color(0xffFFFDF2)
                                        .withOpacity(0.5)),
                                child: Row(
                                  children: [
                                    TextSemiBold('Buy & Rent'),
                                    Gap(screenWidth(context) * 0.01),
                                    SvgPicture.asset(AppAsset.bag)
                                  ],
                                )),
                            Gap(screenWidth(context) * 0.015),
                            Pills(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 7, horizontal: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: const Color(0xffFFFDF2)
                                        .withOpacity(0.5)),
                                child: Row(
                                  children: [
                                    TextSemiBold('Fix & Fill'),
                                    Gap(screenWidth(context) * 0.01),
                                    SvgPicture.asset(AppAsset.house)
                                  ],
                                )),
                            Gap(screenWidth(context) * 0.015),
                            Pills(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 7, horizontal: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: const Color(0xffFFFDF2)
                                        .withOpacity(0.5)),
                                child: Row(
                                  children: [
                                    TextSemiBold('AirBnb'),
                                    Gap(screenWidth(context) * 0.01),
                                    SvgPicture.asset(AppAsset.airbnb)
                                  ],
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Gap(screenHeight(context) * 0.06),
                Row(
                  children: [
                    TextBold(
                      'Investment',
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: PerryColors.primaryBlue,
                    ),
                    Gap(screenWidth(context) * 0.01),
                    TextBold(
                      'Returns',
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: PerryColors.darkTone,
                    ),
                  ],
                ),
                Gap(screenHeight(context) * 0.02),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  width: double.infinity,
                  height: 140,
                  decoration: BoxDecoration(
                      color: const Color(0xffC27DE2),
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextSemiBold(
                            'TOTAL INVESTED',
                            fontSize: 12,
                            color: PerryColors.white,
                          ),
                          TouchableOpacity(
                              onTap: () {},
                              child: SvgPicture.asset(AppAsset.eye))
                        ],
                      ),
                      Column(
                        children: [
                          TextBold(
                            '0.00',
                            fontSize: 36,
                            fontWeight: FontWeight.w500,
                            color: PerryColors.white,
                          ),
                          TextSemiBold(
                            'USD',
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: PerryColors.white,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Gap(screenHeight(context) * 0.02),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: double.infinity,
                      height: screenHeight(context) * 0.06,
                      padding: const EdgeInsets.symmetric(
                          vertical: 6, horizontal: 10),
                      decoration: BoxDecoration(
                          color: const Color(0xffFFFFFF).withOpacity(0.25),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                AppAsset.house,
                                width: screenWidth(context) * 0.07,
                              ),
                              Gap(screenWidth(context) * 0.02),
                              TextBody(
                                'Fix & Flip',
                                color: PerryColors.faded,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              )
                            ],
                          ),
                          TextBody(
                            '0.00 USD',
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          )
                        ],
                      ),
                    ),
                    Gap(screenHeight(context) * 0.012),
                    Container(
                      width: double.infinity,
                      height: screenHeight(context) * 0.06,
                      padding: const EdgeInsets.symmetric(
                          vertical: 6, horizontal: 10),
                      decoration: BoxDecoration(
                          color: const Color(0xffFFFFFF).withOpacity(0.25),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                AppAsset.bag,
                                width: screenWidth(context) * 0.07,
                              ),
                              Gap(screenWidth(context) * 0.02),
                              TextBody(
                                'Buy & Rent',
                                color: PerryColors.faded,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              )
                            ],
                          ),
                          TextBody(
                            '0.00 USD',
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          )
                        ],
                      ),
                    ),
                    Gap(screenHeight(context) * 0.012),
                    Container(
                      width: double.infinity,
                      height: screenHeight(context) * 0.06,
                      padding: const EdgeInsets.symmetric(
                          vertical: 6, horizontal: 10),
                      decoration: BoxDecoration(
                          color: const Color(0xffFFFFFF).withOpacity(0.25),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                AppAsset.airbnb,
                                width: screenWidth(context) * 0.07,
                              ),
                              Gap(screenWidth(context) * 0.02),
                              TextBody(
                                'AirBnb',
                                color: PerryColors.faded,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              )
                            ],
                          ),
                          TextBody(
                            '0.00 USD',
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Gap(screenHeight(context) * 0.05),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextBold(
                          'Investments you are part of',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                        TouchableOpacity(
                            child: SvgPicture.asset(AppAsset.forwardArrowBlack))
                      ],
                    ),
                    Gap(screenHeight(context) * 0.03),
                    TouchableOpacity(
                      onTap: (() {
                        Get.to(const SingleInvestment());
                      }),
                      child: Container(
                        width: double.infinity,
                        // height: screenHeight(context) * 0.13,
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          gradient: LinearGradient(colors: [
                            const Color(0xff9E6AE0).withOpacity(0.35),
                            const Color(0xffA07E65).withOpacity(1),
                          ], begin: Alignment.topLeft, end: Alignment.topRight),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextBold(
                                  'Jamine 4 Bedroom Flat. Boston',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                                TextSemiBold(
                                  'Ashford, Spain',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                                Row(
                                  children: [
                                    Pills(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 7, horizontal: 10),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: const Color(0xffFFFDF2)),
                                        child: Row(
                                          children: [
                                            TextSemiBold('15'),
                                            Gap(screenWidth(context) * 0.01),
                                            SvgPicture.asset(AppAsset.halfMoon)
                                          ],
                                        )),
                                    Gap(screenWidth(context) * 0.02),
                                    Pills(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 7, horizontal: 10),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: const Color(0xffFFFDF2)),
                                        child: Row(
                                          children: [
                                            TextSemiBold('Buy & Rent'),
                                            Gap(screenWidth(context) * 0.01),
                                            SvgPicture.asset(AppAsset.bag)
                                          ],
                                        )),
                                  ],
                                )
                              ],
                            ),
                            Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Image.asset(AppAsset.houseInvestments))
                          ],
                        ),
                      ),
                    ),
                    Gap(screenHeight(context) * 0.016),
                    Container(
                      width: double.infinity,
                      // height: screenHeight(context) * 0.13,
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        gradient: LinearGradient(colors: [
                          const Color(0xff9E6AE0).withOpacity(0.35),
                          const Color(0xffA07E65).withOpacity(1),
                        ], begin: Alignment.topLeft, end: Alignment.topRight),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextBold(
                                'Jamine 4 Bedroom Flat. Boston',
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                              TextSemiBold(
                                'New Jersey',
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                              Row(
                                children: [
                                  Pills(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 7, horizontal: 10),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: const Color(0xffFFFDF2)),
                                      child: Row(
                                        children: [
                                          TextSemiBold('15'),
                                          Gap(screenWidth(context) * 0.01),
                                          SvgPicture.asset(AppAsset.halfMoon)
                                        ],
                                      )),
                                  Gap(screenWidth(context) * 0.02),
                                  Pills(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 7, horizontal: 10),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: const Color(0xffFFFDF2)),
                                      child: Row(
                                        children: [
                                          TextSemiBold('Buy & Rent'),
                                          Gap(screenWidth(context) * 0.01),
                                          SvgPicture.asset(AppAsset.airbnb)
                                        ],
                                      )),
                                ],
                              )
                            ],
                          ),
                          Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Image.asset(AppAsset.houseInvestments))
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        )),
        endDrawer: Container(
          margin: EdgeInsets.only(top: screenHeight(context) * 0.08),
          child: const ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15)),
              child: Drawer(elevation: 1.0, child: InvestSidePANEL())),
        ),
      ),
    );
  }
}
