import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:perrybot/app/app.dart';
import 'package:perrybot/app/styles/fonts.dart';
import 'package:perrybot/app/ui_helpers.dart';
import 'package:perrybot/app/widgets/backarrow.dart';
import 'package:perrybot/core/core.dart';

class SuccessMembership extends StatelessWidget {
  const SuccessMembership({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppAsset.subscribtionBg), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
              child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(AppAsset.perryLogo),
                    Gap(screenWidth(context) * 0.015),
                    TextBold(
                      'Perry',
                      fontSize: 29,
                      fontWeight: FontWeight.w700,
                    )
                  ],
                ),
                Gap(screenHeight(context) * 0.2),
                Column(
                  children: [
                    TextBold(
                      "Success!",
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                    ),
                    Gap(screenHeight(context) * 0.03),
                    Center(
                      child: TextSemiBold(
                        "You have successfully subscibed to Perry Auto Trade Bot",
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Gap(screenHeight(context) * 0.006),
                    TextBold(
                      "\$0.00",
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    ),
                    Gap(screenHeight(context) * 0.06),
                    BusyButton(
                        title: "Cool",
                        width: 109,
                        borderRadius: BorderRadius.circular(20),
                        color: PerryColors.primaryBlue,
                        textColor: PerryColors.white,
                        onTap: (() {}))
                  ],
                )
              ],
            ),
          )),
        ));
  }
}
