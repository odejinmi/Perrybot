import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:perrybot/app/app.dart';
import 'package:perrybot/core/core.dart';

class ConnectBinanceBottomSheet {
  static void binanceBottomSheet(context) {
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
                padding: const EdgeInsets.only(bottom: 20),
                // height: size.height * 0.5,
                decoration: const BoxDecoration(
                  color: PerryColors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15.0),
                    topLeft: Radius.circular(15.0),
                  ),
                ),
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextBold(
                              "Connect Binance",
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: PerryColors.tintedBlack,
                            ),
                            TouchableOpacity(
                              onTap: () => Get.back(),
                              child: TextBold(
                                "Close",
                                fontSize: 14,
                                color: const Color(0xff6B7A82),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Gap(screenHeight(context) * 0.04),
                        TextSmall(
                          "Connect Binance by pasting Binance Trading API key and Secret key here.",
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          textAlign: TextAlign.start,
                        ),
                        Gap(screenHeight(context) * 0.03),
                        TextSemiBold(
                          "API Key",
                          color: PerryColors.primaryBlue,
                          fontSize: 13,
                        ),
                        Gap(screenHeight(context) * 0.0008),
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Paste API Key',
                              filled: true,
                              fillColor: PerryColors.ash,
                              hintStyle: const TextStyle(
                                  color: Color(0xff263238),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: const BorderSide(
                                      width: 1, color: Color(0xffC4C4C4)))),
                        ),
                        Gap(screenHeight(context) * 0.02),
                        TextSemiBold(
                          "Secret Key",
                          color: PerryColors.primaryBlue,
                          fontSize: 13,
                        ),
                        Gap(screenHeight(context) * 0.0008),
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Paste Secret Key',
                              filled: true,
                              fillColor: PerryColors.ash,
                              hintStyle: const TextStyle(
                                  color: Color(0xff263238),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: const BorderSide(
                                      width: 1, color: Color(0xffC4C4C4)))),
                        ),
                        Gap(screenHeight(context) * 0.04),
                        Container(
                          height: 200,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(AppAsset.connect),
                                  fit: BoxFit.contain)),
                        ),
                        Gap(screenHeight(context) * 0.004),
                        TouchableOpacity(
                            child: Center(
                          child: TextSemiBold(
                            "Learn how to connect to Binance",
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            textAlign: TextAlign.center,
                            color: PerryColors.primaryBlue,
                          ),
                        ))
                      ],
                    )),
              )
            ],
          );
        });
  }
}
