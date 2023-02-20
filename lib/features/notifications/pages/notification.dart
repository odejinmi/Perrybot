import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app/widgets/backarrow.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Backarrow(color: Color(0xff2255F8)),
        leadingWidth: 30,
        title: Text(
          "notification".tr,
          style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: Color(0xff000E3B)),
        ),
        actions: [
          Image.asset(
            "assets/images/perrybot/notification.png",
            height: 18,
            width: 18,
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "3.45 pm",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Payment for #3434 Nepa BIll was successfull",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              " Yesterday 3.45 pm",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "You sent N100.000 to #Ichie111 successfully",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
