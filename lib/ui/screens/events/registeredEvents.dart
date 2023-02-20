import 'package:flutter/material.dart';
import 'package:perrybot/color/colors.dart';
import 'package:perrybot/ui/component/backarrow.dart';

class RegisteredEvents extends StatelessWidget {
  const RegisteredEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Backarrow(color: Color(0xffFF7CCB)),
        ),
        title: Text(
          "Registered Events",
          style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: Color(0xff000E3B)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              Icons.settings,
              color: AppColor.primary_blue,
            ),
          )
        ],
      ),
    );
  }
}
