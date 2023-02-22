import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:perrybot/app/styles/styles.dart';
import 'package:perrybot/app/ui_helpers.dart';

Widget chatMessage(String msg, String tagged, context) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
    decoration: const BoxDecoration(color: PerryColors.white),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RichText(
          textDirection: TextDirection.rtl,
          softWrap: true,
          textScaleFactor: 1,
          text: TextSpan(
            text: msg,
            style: DefaultTextStyle.of(context).style,
            children: <TextSpan>[
              TextSpan(
                  text: tagged.length > 1 ? tagged : null,
                  style: const TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ],
    ),
  );
}
