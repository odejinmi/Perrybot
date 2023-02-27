import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:perrybot/app/app.dart';
import 'package:perrybot/app/styles/fonts.dart';
import 'package:perrybot/app/styles/styles.dart';
import 'package:perrybot/app/ui_helpers.dart';
import 'package:perrybot/app/widgets/backarrow.dart';
import 'package:perrybot/core/core.dart';
import 'package:perrybot/features/subscriptions/pages/paymentSubscription.dart';
import 'package:perrybot/features/subscriptions/pages/sucessMembership.dart';
import 'package:perrybot/features/subscriptions/widgets/subscriptionBottomSheet.dart';

class PayMembership extends StatefulWidget {
  const PayMembership({super.key});

  @override
  State<PayMembership> createState() => _PayMembershipState();
}

class _PayMembershipState extends State<PayMembership> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppAsset.subscribtionBg), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Backarrow(color: Color(0xff2255F8)),
            ),
            title: const Text(
              "Pay Membership fee Now",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: Color(0xff000E3B)),
            ),
          ),
          body: SafeArea(
              child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 25, 15, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: TextBold(
                    "Join Perry Global Cooperative",
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Gap(screenHeight(context) * 0.04),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  height: screenHeight(context) * 0.22,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: PerryColors.secondaryYellow),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextBold(
                        "Monthly",
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                      TextBold(
                        "\$99.9",
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                      BusyButton(
                          title: "Subscribe",
                          color: PerryColors.primaryPink,
                          width: 134,
                          onTap: (() {
                            PaySubscriptionBottomSheet.payBottomSheet(context);
                          }))
                    ],
                  ),
                ),
                Gap(screenHeight(context) * 0.02),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  height: screenHeight(context) * 0.22,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: PerryColors.secondaryYellow),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextBold(
                        "Monthly",
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                      TextBold(
                        "\$99.9",
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                      BusyButton(
                          title: "Subscribe",
                          color: PerryColors.primaryPink,
                          width: 134,
                          onTap: (() {
                            PaySubscriptionBottomSheet.payBottomSheet(context);
                          }))
                    ],
                  ),
                ),
                Gap(screenHeight(context) * 0.04),
                TextBody(
                  "Membership Benefits",
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  textAlign: TextAlign.left,
                ),
                Gap(screenHeight(context) * 0.01),
                Row(
                  children: [
                    Image.asset(
                      AppAsset.diamondIcon,
                      width: 8.5,
                      height: 8.5,
                    ),
                    const Gap(10),
                    TextBold(
                      "Access to Wealth Builders Academy",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
                Gap(screenHeight(context) * 0.008),
                Row(
                  children: [
                    Image.asset(
                      AppAsset.diamondIcon,
                      width: 8.5,
                      height: 8.5,
                    ),
                    const Gap(10),
                    TextBold(
                      "Get paid as an Affiliate ",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    )
                  ],
                ),
                Gap(screenHeight(context) * 0.008),
                Row(
                  children: [
                    Image.asset(
                      AppAsset.diamondIcon,
                      width: 8.5,
                      height: 8.5,
                    ),
                    const Gap(10),
                    Flexible(
                      child: TextBold(
                        "Co-invest and make Money from profitable Real Estate Deals",
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                Gap(screenHeight(context) * 0.04),
                Center(
                  child: BusyButton(
                      borderRadius: BorderRadius.circular(16),
                      title: "Skip for now",
                      color: PerryColors.secondaryYellow,
                      width: 150,
                      onTap: (() {
                        Get.to(APIConfiguration());
                      })),
                )
              ],
            ),
          )),
        ));
  }
}
