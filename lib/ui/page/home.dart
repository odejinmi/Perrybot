import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../color/colors.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xffFFFB9E), Color(0xfffee1), Color(0xfffee1)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                "assets/images/perrybot/logo.png",
                height: 19,
                width: 19,
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                "Perry",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const Spacer(),
              Image.asset(
                "assets/images/perrybot/activities.png",
                height: 18,
                width: 18,
              ),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                child: Image.asset(
                  "assets/images/perrybot/notification.png",
                  height: 18,
                  width: 18,
                ),
                onTap: () {
                  Get.toNamed("/notification");
                },
              ),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                child: Image.asset(
                  "assets/images/perrybot/profile.png",
                  height: 18,
                  width: 18,
                ),
                onTap: () {
                  Get.toNamed("/account");
                },
              ),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                child: Icon(
                  Icons.settings,
                  color: AppColor.faded,
                ),
                onTap: () {
                  Get.toNamed("/settings");
                },
              ),
              const SizedBox(
                width: 10,
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "welcome".tr,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  gradient: LinearGradient(
                      colors: [Color(0xffebac00), Color(0xffff7ccb)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "academy".tr,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: AppColor.faded),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "continue_learning".tr,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColor.tinted_black),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Image.asset(
                    "assets/images/perrybot/academyplay.png",
                    height: 50,
                    width: 50,
                  )
                ],
              ),
            ),
            onTap: () {
              Get.toNamed("/academy");
            },
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                "upcoming_event".tr,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
              ),
              const Spacer(),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    gradient: LinearGradient(
                        colors: [Color(0xffebac00), Color(0xffff7ccb)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      "assets/images/perrybot/seenewevents.png",
                      width: 15,
                      height: 15,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text("see_new_events".tr),
                  ],
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              gradient: LinearGradient(
                  colors: [Color(0xff7ccb), Color(0xffF8DF5F)],
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft),
            ),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/perrybot/bananabootcamp.png",
                  height: 59,
                  width: 59,
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Banana Bootcamp",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "19th, August 2023",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          child: const Text(
                            "Crypto",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 8),
                          ),
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 3),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: const Text(
                            "Real estate",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 8),
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
          SizedBox(
            height: 10,
          ),
          Text(
            "quick_actions".tr,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Column(
                children: [
                  Image.asset(
                    "assets/images/perrybot/quickactioninvest.png",
                    height: 34,
                    width: 34,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("invest".tr)
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Image.asset(
                    "assets/images/perrybot/quickactionaffiliates.png",
                    height: 34,
                    width: 34,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("affiliates".tr)
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
