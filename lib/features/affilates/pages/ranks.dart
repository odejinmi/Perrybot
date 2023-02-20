import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:perrybot/app/styles/styles.dart';
import 'package:perrybot/app/ui_helpers.dart';
import 'package:perrybot/app/widgets/backarrow.dart';

class AffiliateRanks extends StatelessWidget {
  const AffiliateRanks({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            const Color(0xff6EFBC0).withOpacity(1),
            const Color(0xffFF9E9E).withOpacity(1),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Color(0xff6EFBC0).withOpacity(0.0),
            leading: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Backarrow(color: Color(0xffFF7CCB)),
            ),
            title: TextBold(
              'Affiliate Ranks & Rewards',
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          body: SafeArea(
            child: SingleChildScrollView(
                child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 18),
                    decoration: BoxDecoration(
                        color: PerryColors.secondaryYellow,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: TextSemiBold(
                            'RANK 1',
                            fontSize: 13,
                            color: PerryColors.tintedBlack,
                            textAlign: TextAlign.center,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Gap(screenHeight(context) * 0.016),
                        TextSmall(
                          'Rewards',
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: PerryColors.primaryBlue,
                        ),
                        Gap(screenHeight(context) * 0.006),
                        TextBold(
                          "Free Education",
                          fontSize: 18,
                        ),
                        Gap(screenHeight(context) * 0.01),
                        TextSmall(
                          'Requirements',
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: PerryColors.tintedBlack,
                        ),
                        Gap(screenHeight(context) * 0.008),
                        Row(children: [
                          const Text(
                            "\u2022",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          TextBold(
                            "Activate and become a member",
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          )
                        ])
                      ],
                    ),
                  ),
                  Gap(screenHeight(context) * 0.016),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 18),
                    decoration: BoxDecoration(
                        color: PerryColors.secondaryYellow,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: TextSemiBold(
                            'RANK 2',
                            fontSize: 13,
                            color: PerryColors.tintedBlack,
                            textAlign: TextAlign.center,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Gap(screenHeight(context) * 0.016),
                        TextSmall(
                          'Rewards',
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: PerryColors.primaryBlue,
                        ),
                        Gap(screenHeight(context) * 0.006),
                        TextBold(
                          "\$100",
                          fontSize: 18,
                        ),
                        Gap(screenHeight(context) * 0.01),
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  child: Icon(Icons.add),
                                  decoration: BoxDecoration(
                                      color: Color(0xffFBD269),
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                Gap(screenWidth(context) * 0.03),
                                TextBold(
                                  '20% direct referral Commission',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                )
                              ],
                            ),
                            Gap(screenHeight(context) * 0.01),
                            Row(
                              children: [
                                Container(
                                  child: Icon(Icons.add),
                                  decoration: BoxDecoration(
                                      color: Color(0xffFBD269),
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                Gap(screenWidth(context) * 0.03),
                                TextBold(
                                  '20% direct referral Commission',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                )
                              ],
                            ),
                          ],
                        ),
                        Gap(screenHeight(context) * 0.01),
                        TextSmall(
                          'Requirements',
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: PerryColors.tintedBlack,
                        ),
                        Gap(screenHeight(context) * 0.008),
                        Row(children: [
                          const Text(
                            "\u2022",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          TextBold(
                            "Refer 5 people",
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          )
                        ]),
                        Gap(screenHeight(context) * 0.008),
                        Row(children: [
                          const Text(
                            "\u2022",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          TextBold(
                            "30 Team members",
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          )
                        ]),
                      ],
                    ),
                  ),
                  Gap(screenHeight(context) * 0.016),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 18),
                    decoration: BoxDecoration(
                        color: PerryColors.secondaryYellow,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: TextSemiBold(
                            'RANK 3',
                            fontSize: 13,
                            color: PerryColors.tintedBlack,
                            textAlign: TextAlign.center,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Gap(screenHeight(context) * 0.016),
                        TextSmall(
                          'Rewards',
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: PerryColors.primaryBlue,
                        ),
                        Gap(screenHeight(context) * 0.006),
                        TextBold(
                          "\$150",
                          fontSize: 18,
                        ),
                        Gap(screenHeight(context) * 0.01),
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  child: Icon(Icons.add),
                                  decoration: BoxDecoration(
                                      color: Color(0xffFBD269),
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                Gap(screenWidth(context) * 0.03),
                                TextBold(
                                  '40% direct referral commission',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                )
                              ],
                            ),
                            Gap(screenHeight(context) * 0.01),
                            Row(
                              children: [
                                Container(
                                  child: Icon(Icons.add),
                                  decoration: BoxDecoration(
                                      color: Color(0xffFBD269),
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                Gap(screenWidth(context) * 0.03),
                                TextBold(
                                  '10% indirect referral commission till infinity',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                )
                              ],
                            ),
                          ],
                        ),
                        Gap(screenHeight(context) * 0.01),
                        TextSmall(
                          'Requirements',
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: PerryColors.tintedBlack,
                        ),
                        Gap(screenHeight(context) * 0.008),
                        Row(children: [
                          const Text(
                            "\u2022",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          TextBold(
                            "10 Direct Referrals",
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          )
                        ]),
                        Gap(screenHeight(context) * 0.008),
                        Row(children: [
                          const Text(
                            "\u2022",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Flexible(
                            child: TextBold(
                              "At least 3 Rank 2 affilates from your team members",
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ]),
                        Gap(screenHeight(context) * 0.008),
                        Row(children: [
                          const Text(
                            "\u2022",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Flexible(
                            child: TextBold(
                              "100 Team members",
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ]),
                      ],
                    ),
                  )
                ],
              ),
            )),
          ),
        ));
  }
}
