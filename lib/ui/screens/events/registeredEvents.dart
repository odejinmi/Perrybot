import 'package:flutter/material.dart';
import 'package:perrybot/app/styles/styles.dart';
import 'package:perrybot/color/colors.dart';
import 'package:perrybot/core/core.dart';
import 'package:perrybot/ui/component/backarrow.dart';

class RegisteredEvents extends StatelessWidget {
  const RegisteredEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1F6FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Backarrow(color: Color(0xffFF7CCB)),
        ),
        title: const Text(
          "Registered Events",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: Color(0xff000E3B)),
        ),
        actions: [
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Image.asset(AppAsset.bluePlay))
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 18),
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                gradient: LinearGradient(colors: [
                  Color(0xff7ccb).withOpacity(0.3),
                  Color(0xffF8DF5F)
                ], begin: Alignment.centerRight, end: Alignment.centerLeft),
              ),
              child: Row(
                children: [
                  Image.asset(
                    AppAsset.bananabootcamp,
                    height: 59,
                    width: 59,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Banana Bootcamp",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 14),
                          ),
                          Image.asset(
                            AppAsset.greenTick,
                            width: 18,
                            height: 18,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "19th, August 2023",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 12),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: Colors.black,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 3),
                            child: const Text(
                              "Live",
                              style: TextStyle(
                                  color: PerryColors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 3),
                            child: const Text(
                              "Crypto",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 10),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: const Text(
                              "Real estate",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 10),
                            ),
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 3),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
