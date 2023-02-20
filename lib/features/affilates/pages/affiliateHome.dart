import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/instance_manager.dart';
import 'package:perrybot/app/app.dart';
import 'package:perrybot/app/styles/styles.dart';
import 'package:perrybot/app/ui_helpers.dart';
import 'package:perrybot/core/core.dart';
import 'package:get/get.dart';
import 'package:perrybot/features/affilates/pages/bankDetails.dart';
import 'package:perrybot/features/affilates/pages/ranks.dart';

class AffiliateHome extends StatefulWidget {
  const AffiliateHome({super.key});

  @override
  State<AffiliateHome> createState() => _AffiliateHomeState();
}

class _AffiliateHomeState extends State<AffiliateHome> {
  bool _isVisible = false;

  void showToast() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  void _showPayout(BuildContext ctx) {
    showModalBottomSheet(
        elevation: 10,
        enableDrag: true,
        isScrollControlled: true,
        backgroundColor: PerryColors.milk,
        context: ctx,
        builder: (ctx) => Wrap(children: [
              Container(
                height: screenHeight(context) * 0.7,
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 28),
                child: ListView(
                  clipBehavior: Clip.hardEdge,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextBold(
                          "Connect Payout Wallet",
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
                    Gap(screenHeight(context) * 0.06),
                    Column(
                      children: [
                        TextBold(
                          "Payout Destination",
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff212D33),
                        ),
                        Gap(screenHeight(context) * 0.01),
                        TextSemiBold(
                          "Insert a USDT wallet or Bank details",
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: PerryColors.faded,
                        ),
                        Gap(screenHeight(context) * 0.001),
                        TextSemiBold(
                          "Learn more",
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: PerryColors.primaryBlue,
                        ),
                        Gap(screenHeight(context) * 0.04),
                        Form(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextSemiBold(
                              "Bank Details",
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              textAlign: TextAlign.left,
                              color: PerryColors.primaryBlue,
                            ),
                            Gap(screenHeight(context) * 0.007),
                            TouchableOpacity(
                              onTap: (() {
                                showToast();
                                print('hidden object');
                              }),
                              child: TextFormField(
                                enableInteractiveSelection: false,
                                decoration: InputDecoration(
                                  fillColor: PerryColors.ash,
                                  filled: true,
                                  enabled: false,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                          width: 1, color: Color(0xffC4C4C4))),
                                  hintText: 'Enter Bank details',
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _isVisible,
                              child: const BankDetails(),
                            )
                          ],
                        )),
                        Gap(screenHeight(context) * 0.03),
                        TextSemiBold(
                          "OR",
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        Gap(screenHeight(context) * 0.03),
                        Form(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextSemiBold(
                              "USDT Wallet",
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              textAlign: TextAlign.left,
                              color: PerryColors.primaryBlue,
                            ),
                            Gap(screenHeight(context) * 0.007),
                            TextFormField(
                              enableInteractiveSelection: false,
                              decoration: InputDecoration(
                                fillColor: PerryColors.ash,
                                enabled: false,
                                filled: true,
                                suffixIcon: const Icon(Icons.arrow_drop_down),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 1, color: Color(0xffC4C4C4))),
                                hintText: 'Select a USDT network',
                              ),
                            ),
                            SizedBox(height: screenHeight(context) * 0.09),
                            Center(
                              child: BusyButton(
                                  title: "Proceed",
                                  width: 126,
                                  color: PerryColors.primaryPink,
                                  onTap: (() {})),
                            ),
                            SizedBox(height: screenHeight(context) * 0.009),
                          ],
                        )),
                      ],
                    ),
                    TextSemiBold(
                      "Note:",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      textAlign: TextAlign.center,
                      color: PerryColors.faded,
                    ),
                    RichText(
                      overflow: TextOverflow.clip,
                      softWrap: true,
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        text: 'Payout is at a minimum of',
                        style: TextStyle(
                            color: PerryColors.faded,
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                        children: <TextSpan>[
                          TextSpan(
                              text: '\$20',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: PerryColors.primaryBlue)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ]));
  }

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: screenWidth(context) * 0.1,
                  decoration: const BoxDecoration(
                      color: PerryColors.primaryPink, shape: BoxShape.circle),
                  child: const BackButton(
                    color: PerryColors.white,
                  ),
                ),
                Expanded(
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
                              onTap: (() {
                                _showPayout(context);
                              })),
                          Gap(screenHeight(context) * 0.03),
                          BusyButton(
                              title: "See Ranks",
                              width: screenWidth(context) * 0.6,
                              textColor: PerryColors.white,
                              color: PerryColors.primaryBlue,
                              onTap: (() {
                                Get.to(const AffiliateRanks());
                              })),
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
