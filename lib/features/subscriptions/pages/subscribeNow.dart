import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:perrybot/app/app.dart';
import 'package:perrybot/app/styles/fonts.dart';
import 'package:perrybot/app/styles/styles.dart';
import 'package:perrybot/app/ui_helpers.dart';
import 'package:perrybot/app/widgets/backarrow.dart';
import 'package:perrybot/core/core.dart';
import 'package:perrybot/features/subscriptions/pages/payMemebership.dart';

class SubscribeNow extends StatelessWidget {
  const SubscribeNow({super.key});

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
            "Subscription Now",
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: Color(0xff000E3B)),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: TextBold(
                    "Welcome to Auto Trader",
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    textAlign: TextAlign.center,
                  ),
                ),
                Gap(screenHeight(context) * 0.08),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: PerryColors.primaryBlue),
                  child: Column(
                    children: [
                      TextSemiBold(
                        "Over 1,000% profit Made for Subscribers monthly.",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: PerryColors.white,
                      ),
                      Gap(screenHeight(context) * 0.015),
                      TextSemiBold(
                        "Connect our BOT to your favorite exchanges: Coinbase or Binance and let it trade for you handsfree.",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: PerryColors.white,
                      ),
                      Gap(screenHeight(context) * 0.015),
                      TextBold(
                        "Enjoy mouth watering affiliate comissions and benefits.",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: PerryColors.white,
                      ),
                      Gap(screenHeight(context) * 0.015),
                      TextSemiBold(
                        "Read carefuly and choose the best package for  you!",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: PerryColors.white,
                      ),
                      Gap(screenHeight(context) * 0.05),
                      BusyButton(
                          title: "Choose a package",
                          color: PerryColors.primaryPink,
                          textColor: PerryColors.white,
                          onTap: (() {
                            Get.to(const PayMembership());
                          }))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
