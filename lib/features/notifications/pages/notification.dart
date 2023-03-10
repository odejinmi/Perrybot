import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:perrybot/app/styles/styles.dart';
import 'package:perrybot/app/ui_helpers.dart';

import '../../../app/widgets/backarrow.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1F6FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Backarrow(color: const Color(0xff2255F8).withOpacity(0.6)),
        ),
        title: Text(
          "notification".tr,
          style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: Color(0xff000E3B)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              "assets/images/perrybot/notification.png",
              height: screenHeight(context) * 0.07,
              width: screenWidth(context) * 0.06,
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            decoration: BoxDecoration(
                color: PerryColors.white,
                borderRadius: BorderRadius.circular(8)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextSemiBold(
                  "Today,3.45 pm",
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextSemiBold(
                  "Payment for #3434 Nepa BIll was successfull",
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: const Color(0xff6B7A82),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            decoration: BoxDecoration(
                color: PerryColors.white,
                borderRadius: BorderRadius.circular(8)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextSemiBold(
                  " Yesterday 3.45 pm",
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextSemiBold(
                  "You sent N100.000 to #Ichie111 successfully",
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              ],
            ),
          ),
          Gap(screenHeight(context) * 0.04),
          TextBold(
            "Last week (9)",
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: const Color(0xff6B7A82),
          ),
          Gap(screenHeight(context) * 0.01),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            decoration: BoxDecoration(
                color: PerryColors.white,
                borderRadius: BorderRadius.circular(8)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextSemiBold(
                  "Friday, 3.45 pm",
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextSemiBold(
                  "Payment for #3434 Nepa BIll was successfull",
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: const Color(0xff6B7A82),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            decoration: BoxDecoration(
                color: PerryColors.white,
                borderRadius: BorderRadius.circular(8)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextSemiBold(
                  " Yesterday 3.45 pm",
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextSemiBold(
                  "You sent N100.000 to #Ichie111 successfully",
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
