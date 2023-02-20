import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perrybot/app/widgets/backarrow.dart';

class Academy extends StatelessWidget {
  const Academy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Backarrow(color: Color(0xff2255F8)),
        leadingWidth: 30,
        title: Text(
          "academy".tr,
          style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: Color(0xff000E3B)),
        ),
        actions: [
          Container(
            height: 24,
            width: 24,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Color(0xff2255F8)),
            child: const Icon(
              Icons.play_arrow,
              size: 15,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: GridView.builder(
          itemCount: 6,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20.0,
              mainAxisSpacing: 10.0,
              childAspectRatio: 0.8),
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Container(
                  height: 160,
                  decoration: const BoxDecoration(
                      color: Color(0xffff7ccb),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Academy video",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
