import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:perrybot/app/app.dart';
import 'package:get/get.dart';
import 'package:perrybot/core/constants/app_asset.dart';
import 'package:perrybot/features/homepage/model/activities.dart';

class ActivitiesScreen extends StatefulWidget {
  const ActivitiesScreen({super.key});

  @override
  State<ActivitiesScreen> createState() => _ActivitiesScreenState();
}

class _ActivitiesScreenState extends State<ActivitiesScreen> {
  List<Activities> users = [
    Activities(
        title: "Bought Cherryhill Apartment 102",
        subtitle: "Real Estate",
        amount: " \$14,000.00",
        avatar: AppAsset.houseFill,
        time: "17, 02. 6:14 pm"),
    Activities(
        title: "You received a reward of",
        subtitle: "Affiliate",
        amount: " \$200",
        avatar: AppAsset.usersHand,
        time: "12, 08. 3:17 pm"),
    Activities(
        title: "Bought Cherryhill Apartment 102",
        subtitle: "Affiliate",
        amount: " \$14,000.00",
        avatar: AppAsset.usersHand,
        time: "17, 02. 6:14 pm"),
    Activities(
        title: "You received a reward of",
        subtitle: "BOT",
        amount: " \$200",
        avatar: AppAsset.usersHand,
        time: "12, 08. 3:17 pm"),
  ];

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
          "Activities".tr,
          style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: Color(0xff000E3B)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              AppAsset.activities,
              height: screenHeight(context) * 0.07,
              width: screenWidth(context) * 0.06,
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        children: users.map((userone) {
          return Container(
            width: double.infinity,
            margin: const EdgeInsets.only(bottom: 8),
            decoration: BoxDecoration(
                color: PerryColors.white,
                borderRadius: BorderRadius.circular(8)),
            child: ListTile(
              leading: SvgPicture.asset(
                userone.avatar,
                width: 40,
              ),
              title: RichText(
                softWrap: true,
                maxLines: 2,
                text: TextSpan(
                  text: userone.title,
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: PerryColors.tintedBlack),
                  children: <TextSpan>[
                    TextSpan(
                        text: userone.amount,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: PerryColors.primaryGreen)),
                  ],
                ),
              ),
              subtitle: Row(
                children: [
                  TextSemiBold(
                    userone.subtitle,
                    color: PerryColors.primaryBlue,
                    fontSize: 12,
                  ),
                  Gap(screenWidth(context) * 0.04),
                  TextSemiBold(
                    userone.time,
                    fontSize: 12,
                    color: PerryColors.faded,
                  )
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
