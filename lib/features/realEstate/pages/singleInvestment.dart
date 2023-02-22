import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:perrybot/app/app.dart';
import 'package:perrybot/app/styles/styles.dart';
import 'package:perrybot/app/ui_helpers.dart';
import 'package:perrybot/app/widgets/backarrow.dart';
import 'package:get/get.dart';
import 'package:perrybot/core/core.dart';
import 'package:perrybot/features/realEstate/pages/chatInvestment.dart';
import 'package:perrybot/features/realEstate/widgets/detailsBottomSheet.dart';

class SingleInvestment extends StatefulWidget {
  const SingleInvestment({super.key});

  @override
  State<SingleInvestment> createState() => _SingleInvestmentState();
}

class _SingleInvestmentState extends State<SingleInvestment> {
  PageController _pageController = PageController(
    initialPage: 0,
  );

  final List<Map> myRooms = [
    {"name": "Settings Room 1", "images": AppAsset.room1, "location": "Room 1"},
    {"name": "Settings Room 2", "images": AppAsset.room2, "location": "Room 2"},
    {"name": "Room 3", "images": AppAsset.room3, "location": "Room 3"},
    {"name": "Room 4", "images": AppAsset.room4, "location": "Room 4"},
    {"name": "Room 4", "images": AppAsset.room4, "location": "Room 4"},
    {"name": "Room 4", "images": AppAsset.room4, "location": "Room 4"},
  ];

  int _currentIndex = 0;

  @override
  void initState() {
    _pageController = PageController(viewportFraction: 1);
    Timer.periodic(const Duration(seconds: 5), (timer) {
      Future.delayed(const Duration(seconds: 5), () {
        // Here you can write your code
        if (mounted) {
          setState(() {
            // Here you can write your code for open new view
            if (_currentIndex < 2) {
              _currentIndex++;
            } else {
              _currentIndex = 0;
            }
            _pageController.animateToPage(
              _currentIndex,
              duration: const Duration(milliseconds: 350),
              curve: Curves.easeIn,
            );
          });
        }
      });
      Future.delayed(const Duration(seconds: 15), () {
        // Here you can write your code
        if (mounted) {
          setState(() {
            // Here you can write your code for open new view
            if (_currentIndex < 2) {
              _currentIndex++;
            } else {
              _currentIndex = 0;
            }
            _pageController.animateToPage(
              _currentIndex,
              duration: const Duration(milliseconds: 350),
              curve: Curves.easeIn,
            );
          });
        }
      });
      Future.delayed(const Duration(seconds: 30), () {
        // Here you can write your code
        if (mounted) {
          setState(() {
            // Here you can write your code for open new view
            if (_currentIndex < 2) {
              _currentIndex++;
            } else {
              _currentIndex = 0;
            }
            _pageController.animateToPage(
              _currentIndex,
              duration: const Duration(milliseconds: 350),
              curve: Curves.easeIn,
            );
          });
        }
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffDFD1E6),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Backarrow(color: const Color(0xffC27DE2).withOpacity(0.6)),
        ),
        title: const Text("Jamine 4 Bedroom Flat, Boston",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 14,
              color: PerryColors.tintedBlack,
            )),
        actions: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(AppAsset.threeDotsMenu)),
        ],
      ),
      body: SafeArea(
          child: Stack(children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                height: 350,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: myRooms.length,
                  onPageChanged: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          child: Image.asset(
                            myRooms[index]['images'],
                            fit: BoxFit.cover,
                            width: 400.0,
                            height: 350.0,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 10, 15),
                            padding: const EdgeInsets.symmetric(
                                vertical: 3, horizontal: 10),
                            decoration: BoxDecoration(
                                color: PerryColors.tintedBlack,
                                borderRadius: BorderRadius.circular(10)),
                            child: TextSemiBold(
                              myRooms[index]['name'],
                              color: PerryColors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        )
                      ],
                    );
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 10),
                height: 120,
                child: ListView.builder(
                    itemCount: myRooms.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return TouchableOpacity(
                        onTap: () {
                          setState(() {
                            _pageController.animateToPage(index,
                                duration: const Duration(seconds: 2),
                                curve: Curves.bounceOut);
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(5, 0, 2, 0),
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(myRooms[index]['images']))),
                        ),
                      );
                    }),
              ),
              Gap(screenHeight(context) * 0.004),
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 18),
                // height: screenHeight(context) * 0.2,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: PerryColors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextSemiBold(
                      "Property Value",
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: PerryColors.faded,
                    ),
                    Gap(screenHeight(context) * 0.045),
                    Center(
                      child: RichText(
                        softWrap: true,
                        maxLines: 2,
                        text: const TextSpan(
                          text: "10,0000.00",
                          style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.w500,
                              color: PerryColors.tintedBlack),
                          children: <TextSpan>[
                            TextSpan(
                                text: "USD",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: PerryColors.primaryGreen)),
                          ],
                        ),
                      ),
                    ),
                    Gap(screenHeight(context) * 0.04),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 6, horizontal: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff54EDA3).withOpacity(1)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                AppAsset.plant,
                                width: 15,
                                height: 15,
                              ),
                              TextSemiBold(
                                "16% ROI",
                                color: PerryColors.primaryGreen,
                              )
                            ],
                          ),
                          TextSemiBold("2 slots",
                              color: PerryColors.primaryBlue,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                          TextSemiBold(
                            "Bought for \$12,000",
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: PerryColors.faded,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const Gap(0.2),
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 18),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: PerryColors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextSmall(
                      "Next ROI Distribution",
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: PerryColors.faded,
                    ),
                    TextSmall(
                      "11 July, 2023",
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: PerryColors.primaryPink,
                    ),
                  ],
                ),
              ),
              const Gap(0.2),
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 18),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: PerryColors.secondaryYellow,
                    borderRadius: BorderRadius.circular(20)),
                child: TouchableOpacity(
                  onTap: () {
                    DetailsBottomSheet.propertyDetailsBottomSheet(context);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextSmall(
                        "Property Details",
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: PerryColors.faded,
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: PerryColors.faded,
                        size: 18,
                      )
                    ],
                  ),
                ),
              ),
              Gap(screenHeight(context) * 0.1),
            ],
          ),
        ),
        Stack(children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.only(top: 1),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                height: 55,
                decoration: const BoxDecoration(
                  color: PerryColors.primaryPurple,
                  // borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextSemiBold(
                      "IP man",
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: PerryColors.primaryBlue,
                    ),
                    TouchableOpacity(
                      onTap: (() {
                        Get.to(() => ChatInvestment());
                      }),
                      child: Row(
                        children: [
                          TextSemiBold(
                            "And God said, let there be light and ...",
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: PerryColors.faded,
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            color: PerryColors.faded,
                            size: 18,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )),
          Positioned(
            bottom: 40,
            left: 10,
            child: Container(
              height: 30,
              width: 70,
              decoration: BoxDecoration(
                  color: PerryColors.primaryPurple,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppAsset.message,
                      width: 16,
                      height: 16,
                    ),
                    const Gap(3),
                    TextBold(
                      "Chat",
                      fontSize: 14,
                    )
                  ],
                ),
              ),
            ),
          ),
        ])
      ])),
    );
  }
}
