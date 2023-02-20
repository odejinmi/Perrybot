import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:perrybot/app/styles/fonts.dart';
import 'package:perrybot/app/styles/styles.dart';
import 'package:perrybot/app/ui_helpers.dart';

class SuccessModalBottomSheet {
  static void moreModalBottomSheet(context) {
    Size size = MediaQuery.of(context).size;
    showModalBottomSheet(
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0),
        ),
        context: context,
        builder: (BuildContext bc) {
          return Container(
            height: size.height * 0.7,
            decoration: const BoxDecoration(
              color: PerryColors.secondaryYellow,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15.0),
                topLeft: Radius.circular(15.0),
              ),
            ),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextBold(
                    "Operation Success",
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                  Gap(screenHeight(context) * 0.04),
                  TextSemiBold(
                    "Check your email for confirmation",
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  )
                ],
              ),
            ),
          );
        });
  }
}
