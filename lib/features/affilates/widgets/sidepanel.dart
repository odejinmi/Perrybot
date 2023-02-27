import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:perrybot/app/app.dart';

class AffiliateSidepanel extends StatelessWidget {
  const AffiliateSidepanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextBold(
                "Options",
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              TouchableOpacity(
                  onTap: (() {
                    Get.back();
                  }),
                  child: TextSemiBold("Close"))
            ],
          ),
          Gap(screenHeight(context) * 0.06),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
            height: 50,
            decoration: const BoxDecoration(color: PerryColors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(Icons.messenger_outline_sharp),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: PerryColors.white,
                        hintText: "Report a Problem",
                        hintStyle: TextStyle(
                            color: PerryColors.faded,
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                        border: InputBorder.none),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
