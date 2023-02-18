import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:perrybot/app/app.dart';
import 'package:perrybot/app/styles/styles.dart';
import 'package:perrybot/app/ui_helpers.dart';
import 'package:perrybot/core/core.dart';

class AffiliateHome extends StatelessWidget {
  const AffiliateHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AppAsset.affiliateBg), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  child: BackButton(
                    color: PerryColors.white,
                  ),
                ),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                              ])),
                        ],
                      ),
                      Gap(screenHeight(context) * 0.03),
                      TextBold(
                        "Become a PerryAffiliate. Share with friends and get paid.",
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        textAlign: TextAlign.center,
                      ),
                      Gap(screenHeight(context) * 0.08),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BusyButton(
                              title: "Become an Affiliate",
                              width: screenWidth(context) * 0.6,
                              color: PerryColors.secondaryYellow,
                              onTap: (() {})),
                          Gap(screenHeight(context) * 0.03),
                          BusyButton(
                              title: "See Ranks",
                              width: screenWidth(context) * 0.6,
                              textColor: PerryColors.white,
                              color: PerryColors.primaryBlue,
                              onTap: (() {})),
                        ],
                      )
                    ],
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
