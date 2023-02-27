import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:perrybot/app/app.dart';
import 'package:perrybot/app/styles/fonts.dart';
import 'package:perrybot/app/ui_helpers.dart';
import 'package:perrybot/app/widgets/backarrow.dart';
import 'package:perrybot/core/core.dart';
import 'package:perrybot/features/subscriptions/widgets/connectBinance.dart';
import 'package:perrybot/features/subscriptions/widgets/connectCoinbase.dart';

class APIConfiguration extends StatelessWidget {
  const APIConfiguration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Backarrow(color: Color(0xff2255F8)),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: TextBold(
                "API Configuration",
                fontSize: 24,
                fontWeight: FontWeight.w600,
                textAlign: TextAlign.center,
              ),
            ),
            Gap(screenHeight(context) * 0.008),
            Center(
              child: TextSmall(
                "Select an API to be used for trading",
                fontSize: 14,
                fontWeight: FontWeight.w400,
                textAlign: TextAlign.center,
              ),
            ),
            Gap(screenHeight(context) * 0.008),
            Center(
              child: TextSmall(
                "This is 100% safe as we don’t have access to your Binance or Coinbase account.",
                fontSize: 14,
                fontWeight: FontWeight.w400,
                textAlign: TextAlign.center,
              ),
            ),
            Gap(screenHeight(context) * 0.02),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: PerryColors.secondaryYellow),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    AppAsset.coinbase,
                    height: 50,
                  ),
                  Gap(screenHeight(context) * 0.015),
                  TextBold(
                    "Connect our API to your Coinbase account.",
                    textAlign: TextAlign.center,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                  Gap(screenHeight(context) * 0.015),
                  BusyButton(
                      title: "CONNECT",
                      color: PerryColors.primaryPink,
                      width: 134,
                      onTap: (() {
                        ConnectCoinBaseBottomSheet.coinbaseBottomSheet(context);
                      }))
                ],
              ),
            ),
            Gap(screenHeight(context) * 0.025),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: PerryColors.primaryBlue),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    AppAsset.binance,
                    height: 50,
                  ),
                  Gap(screenHeight(context) * 0.015),
                  TextBold(
                    "Connect our API to your Binance account.",
                    textAlign: TextAlign.center,
                    fontSize: 18,
                    color: PerryColors.white,
                    fontWeight: FontWeight.w700,
                  ),
                  Gap(screenHeight(context) * 0.015),
                  BusyButton(
                      title: "CONNECT",
                      color: PerryColors.primaryPink,
                      width: 134,
                      onTap: (() {
                        ConnectBinanceBottomSheet.binanceBottomSheet(context);
                      }))
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
