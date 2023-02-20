import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perrybot/controller/mainpagecontroller.dart';
import 'package:perrybot/ui/screens/affilates/affiliateHome.dart';
import 'package:perrybot/ui/screens/affilates/affiliates.dart';
import 'package:perrybot/ui/screens/events/events.dart';
import 'package:perrybot/ui/screens/realEstate/realEstate.dart';

import '../../color/colors.dart';
import 'homepage/page/home.dart';

class Mainpage extends GetView<Mainpagecontroller> {
  const Mainpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(Mainpagecontroller());
    return GetX<Mainpagecontroller>(builder: (controller) {
      final tabs = [
        const Home(),
        const RealEstate(),
        const AffiliateHome(),
        const Events()
      ];
      return Scaffold(
        body: tabs[controller.page.value],
        bottomNavigationBar: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          color: controller.page == 2
              ? const Color(0xffE0FFF0)
              : const Color(0xffFFF5F5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              item(0, "Home", 0xffFB6767),
              item(1, "Real Estate", 0xffC27DE2),
              item(2, "Affiliates", 0xff1DC373),
              item(3, "Events", 0xffFF7CCB),
            ],
          ),
        ),
      );
    });
  }

  Widget item(position, name, color) {
    return GestureDetector(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/perrybot/${controller.page == position ? '' : 'un'}selected${name.toString().toLowerCase().replaceAll(" ", "")}.png",
            height: 23,
            width: 23,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            name,
            style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: controller.page == position
                    ? Color(color)
                    : AppColor.faded),
          ),
        ],
      ),
      onTap: () {
        controller.page.value = position;
        controller.storage.write("page", position);
      },
    );
  }
}
