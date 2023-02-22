import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:perrybot/app/styles/styles.dart';
import 'package:perrybot/app/ui_helpers.dart';

Widget chatDetails(String user, String avatar, String time, context) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      CircleAvatar(
        backgroundColor: const Color(0xffC4C4C4),
        radius: 18,
        child: Image.asset(
          avatar,
          width: 18,
        ),
      ),
      Gap(screenWidth(context) * 0.028),
      TextBold(
        user,
        fontSize: 11.99,
        fontWeight: FontWeight.w400,
        color: const Color(0xff75919E),
      ),
      Gap(screenWidth(context) * 0.06),
      TextSemiBold(
        time,
        fontSize: 11.99,
        fontWeight: FontWeight.w400,
        color: const Color(0xff6B7A82),
      )
    ],
  );
}
