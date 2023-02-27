import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:perrybot/app/app.dart';
import 'package:perrybot/core/core.dart';
import 'package:perrybot/features/affilates/widgets/sidepanel.dart';
import 'package:click_to_copy/click_to_copy.dart';

class Affilates extends StatefulWidget {
  const Affilates({super.key});

  @override
  State<Affilates> createState() => _AffilatesState();
}

class _AffilatesState extends State<Affilates> {
  GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();
  final _controller1 = TextEditingController(text: "i.438hkloh");
  bool showContainers = true;
  bool showReferralTab = true;
  final double percentage = 13.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          const Color(0xff88F9CA).withOpacity(1),
          const Color(0xff88F9CA).withOpacity(0),
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
                                  text: 'Affiliate',
                                  style: TextStyle(
                                      color: PerryColors.primaryGreen))
                            ]))
                      ],
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 8),
                            decoration: BoxDecoration(
                                color: PerryColors.primaryBlue,
                                borderRadius: BorderRadius.circular(15)),
                            child: TextBold(
                              'Ranks',
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: PerryColors.white,
                            ),
                          ),
                        ),
                        TouchableOpacity(
                            onTap: (() {
                              _scaffoldState.currentState!.openEndDrawer();
                            }),
                            child: SvgPicture.asset(AppAsset.threeDotsMenu)),
                      ],
                    )
                  ],
                ),
                Gap(screenHeight(context) * 0.02),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  width: double.infinity,
                  height: 140,
                  decoration: BoxDecoration(
                      color: const Color(0xff54EDA3),
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
                            color: PerryColors.tintedBlack,
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
                            color: PerryColors.tintedBlack,
                          ),
                          TextSemiBold(
                            'USD',
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: PerryColors.tintedBlack,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Gap(screenHeight(context) * 0.02),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
                  decoration: BoxDecoration(
                      color: PerryColors.primaryYellow,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextBold(
                        'TOTAL CASHED OUT',
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                      TextBold(
                        '0.00 USD',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      )
                    ],
                  ),
                ),
                Gap(screenHeight(context) * 0.01),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          AppAsset.star,
                          width: 13,
                          height: 13,
                        ),
                        const Gap(8),
                        TextSemiBold(
                          "Rank 1",
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        )
                      ],
                    ),
                    TextBody(
                      "${percentage.floor().toString()}%",
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    )
                  ],
                ),
                Gap(screenHeight(context) * 0.015),
                SizedBox(
                  width: double.infinity,
                  child: ColoredLinearPercentIndicator(
                    percent: percentage,
                    width: 300,
                    height: 20,
                    colors: [
                      PerryColors.primaryBlue,
                      PerryColors.primaryPink,
                      PerryColors.primaryYellow
                    ],
                  ),
                ),
                Gap(screenHeight(context) * 0.02),
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          TouchableOpacity(
                              onTap: (() {
                                setState(() {
                                  showContainers = true;
                                });
                              }),
                              child: TextBody(
                                "Progress",
                                fontWeight: showContainers
                                    ? FontWeight.w900
                                    : FontWeight.w400,
                              )),
                          const Gap(13),
                          TouchableOpacity(
                              onTap: (() {
                                setState(() {
                                  showContainers = false;
                                });
                              }),
                              child: TextBody(
                                "Rewards",
                                fontWeight: showContainers
                                    ? FontWeight.w400
                                    : FontWeight.w900,
                              ))
                        ],
                      ),
                      Visibility(
                          visible: showContainers,
                          child: Container(
                            child: Column(
                              children: [
                                Gap(screenHeight(context) * 0.02),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 14, horizontal: 12),
                                  decoration: BoxDecoration(
                                      color: PerryColors.lightHearted,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      TextBold(
                                        'Direct Referrals (Team)',
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500,
                                        color: PerryColors.faded,
                                      ),
                                      TextBold(
                                        '3/5',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                      )
                                    ],
                                  ),
                                ),
                                Gap(screenHeight(context) * 0.01),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 14, horizontal: 12),
                                  decoration: BoxDecoration(
                                      color: PerryColors.lightHearted,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      TextBold(
                                        'Team Referrals',
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500,
                                        color: PerryColors.faded,
                                      ),
                                      TextBold(
                                        '15',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                      )
                                    ],
                                  ),
                                ),
                                Gap(screenHeight(context) * 0.01),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 14, horizontal: 12),
                                  decoration: BoxDecoration(
                                      color: PerryColors.lightHearted,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      TextBold(
                                        'Total Referrals',
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500,
                                        color: PerryColors.faded,
                                      ),
                                      TextBold(
                                        '18/30',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )),
                      Visibility(
                          visible: !showContainers,
                          child: Container(
                            child: Column(
                              children: [
                                Gap(screenHeight(context) * 0.02),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 14, horizontal: 12),
                                  decoration: BoxDecoration(
                                      color: PerryColors.lightHearted,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      TextBold(
                                        'Direct Referrals (Team)',
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500,
                                        color: PerryColors.faded,
                                      ),
                                      TextBold(
                                        '3/5',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                      )
                                    ],
                                  ),
                                ),
                                Gap(screenHeight(context) * 0.01),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 14, horizontal: 12),
                                  decoration: BoxDecoration(
                                      color: PerryColors.lightHearted,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      TextBold(
                                        'Team Referrals',
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500,
                                        color: PerryColors.faded,
                                      ),
                                      TextBold(
                                        '15',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                      )
                                    ],
                                  ),
                                ),
                                Gap(screenHeight(context) * 0.01),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 14, horizontal: 12),
                                  decoration: BoxDecoration(
                                      color: PerryColors.lightHearted,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      TextBold(
                                        'Total Referrals',
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500,
                                        color: PerryColors.faded,
                                      ),
                                      TextBold(
                                        '18/30',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
                Gap(screenHeight(context) * 0.02),
                TouchableOpacity(
                    onTap: (() {}),
                    child: TextBold(
                      "Invite Friends",
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: PerryColors.primaryBlue,
                    )),
                Gap(screenHeight(context) * 0.03),
                TextFormField(
                  controller: _controller1,
                  autofocus: false,
                  // initialValue: 'i.438hkloh',
                  decoration: InputDecoration(
                      suffix: TouchableOpacity(
                          onTap: (() async {
                            await ClickToCopy.copy(_controller1.text.trim());
                          }),
                          child: Container(
                            padding: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: PerryColors.primaryPink),
                            child: TextBold(
                              "Share Link",
                              fontSize: 13,
                            ),
                          )),
                      hintStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: PerryColors.faded),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1, color: Color(0xffC4C4C4)),
                          borderRadius: BorderRadius.circular(10))),
                ),
                Gap(screenHeight(context) * 0.02),
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          TouchableOpacity(
                              onTap: (() {
                                setState(() {
                                  showReferralTab = true;
                                });
                              }),
                              child: TextBody(
                                "Direct Referrals (12)",
                                fontWeight: showReferralTab
                                    ? FontWeight.w900
                                    : FontWeight.w400,
                                color: showReferralTab
                                    ? PerryColors.primaryBlue
                                    : PerryColors.faded,
                              )),
                          const Gap(13),
                          TouchableOpacity(
                              onTap: (() {
                                setState(() {
                                  showReferralTab = false;
                                });
                              }),
                              child: TextBody(
                                "Team Referrals(15)",
                                fontWeight: showReferralTab
                                    ? FontWeight.w400
                                    : FontWeight.w900,
                                color: showReferralTab
                                    ? PerryColors.faded
                                    : PerryColors.primaryBlue,
                              ))
                        ],
                      ),
                      Visibility(
                          visible: showReferralTab,
                          child: Column(
                            children: [
                              Gap(screenHeight(context) * 0.02),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 14, horizontal: 12),
                                decoration: BoxDecoration(
                                    // color: PerryColors.lightHearted,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          AppAsset.greenAvatar,
                                          width: 15,
                                          height: 15,
                                        ),
                                        const Gap(10),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            TextBold(
                                              "Japhet",
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                            ),
                                            TextSemiBold(
                                              "checkforjaphet@gmail.com",
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: PerryColors.faded,
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    TextSemiBold(
                                      "Active",
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      color: PerryColors.primaryGreen,
                                    )
                                  ],
                                ),
                              ),
                              Gap(screenHeight(context) * 0.008),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 14, horizontal: 12),
                                decoration: BoxDecoration(
                                    // color: PerryColors.lightHearted,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          AppAsset.greenAvatar,
                                          width: 15,
                                          height: 15,
                                        ),
                                        const Gap(10),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            TextBold(
                                              "Julia",
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                            ),
                                            TextSemiBold(
                                              "Julia1235@yahoo.com",
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: PerryColors.faded,
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    TextSemiBold(
                                      "Inactive",
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.red,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )),
                      Visibility(
                          visible: !showReferralTab,
                          child: Column(
                            children: [
                              Gap(screenHeight(context) * 0.02),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 14, horizontal: 12),
                                decoration: BoxDecoration(
                                    // color: PerryColors.lightHearted,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          AppAsset.greenAvatar,
                                          width: 15,
                                          height: 15,
                                        ),
                                        const Gap(10),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            TextBold(
                                              "Japhet",
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                            ),
                                            TextSemiBold(
                                              "checkforjaphet@gmail.com",
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: PerryColors.faded,
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    TextSemiBold(
                                      "Active",
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      color: PerryColors.primaryGreen,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ))
                    ],
                  ),
                ),
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
              child: Drawer(elevation: 1.0, child: AffiliateSidepanel())),
        ),
      ),
    );
  }
}
