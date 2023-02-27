import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:perrybot/app/app.dart';

class PaySubscriptionBottomSheet {
  static void payBottomSheet(context) {
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
                padding: EdgeInsets.only(bottom: 20),
                // height: size.height * 0.5,
                decoration: const BoxDecoration(
                  color: Color(0xffFAF6F1),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15.0),
                    topLeft: Radius.circular(15.0),
                  ),
                ),
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 4),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: PerryColors.primaryPink),
                              child: const Icon(Icons.arrow_back_ios_new),
                            ),
                            TextBold(
                              "Payment",
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
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
                          "Amount to pay",
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff6B7A82),
                        ),
                        Gap(screenHeight(context) * 0.006),
                        TextBold(
                          "\$99.9",
                          fontSize: 35,
                          fontWeight: FontWeight.w500,
                          color: PerryColors.tintedBlack,
                        ),
                        Gap(screenHeight(context) * 0.06),
                        TextSmall(
                          "Choose payment method",
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff6B7A82),
                        ),
                        Gap(screenHeight(context) * 0.01),
                        TouchableOpacity(
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: PerryColors.primaryPink),
                            child: TextBold(
                              "Pay with USDT",
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Gap(screenHeight(context) * 0.02),
                        TextBold(
                          "Or",
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff6B7A82),
                        ),
                        Gap(screenHeight(context) * 0.02),
                        TouchableOpacity(
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: PerryColors.secondaryYellow),
                            child: TextBold(
                              "Pay with Card",
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    )),
              )
            ],
          );
        });
  }
}
