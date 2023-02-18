import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:perrybot/app/app.dart';
import 'package:perrybot/core/core.dart';

class Events extends StatelessWidget {
  const Events({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          const Color(0xffFFBBE4).withOpacity(1),
          const Color(0xffFFB0E0).withOpacity(0),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(AppAsset.perryLogo),
                          Gap(screenWidth(context) * 0.009),
                          RichText(
                              text: const TextSpan(
                                  text: 'Perry',
                                  style: TextStyle(
                                      color: Color(0xff192B47),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20),
                                  children: <TextSpan>[
                                TextSpan(
                                    text: 'Events',
                                    style: TextStyle(color: Color(0xffFF7CCB)))
                              ]))
                        ],
                      ),
                      TouchableOpacity(
                          child: SvgPicture.asset(AppAsset.threeDotsMenu))
                    ],
                  ),
                  Gap(screenHeight(context) * 0.03),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    height: 170,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            const Color(0xffEBAC00).withOpacity(0.2),
                            const Color(0xffFF7CCB).withOpacity(0.2),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextBold(
                          'Academy',
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextSmall(
                              'Continue learning',
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                            Image.asset(
                              AppAsset.academyPlay,
                              width: 40,
                              height: 40,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Gap(screenHeight(context) * 0.03),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextBold('Registered',
                          fontSize: 14, fontWeight: FontWeight.w700),
                      Gap(screenHeight(context) * 0.01),
                      Row(
                        children: [
                          Image.asset(
                            AppAsset.bananabootcamp,
                            width: 60,
                            height: 60,
                          ),
                          Gap(screenWidth(context) * 0.02),
                          Image.asset(
                            AppAsset.event2,
                            width: 60,
                            height: 60,
                          ),
                          Gap(screenWidth(context) * 0.02),
                          Image.asset(
                            AppAsset.event2,
                            width: 60,
                            height: 60,
                          ),
                        ],
                      )
                    ],
                  ),
                  Gap(screenHeight(context) * 0.04),
                  TextSemiBold(
                    'Upcoming Events',
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                  Gap(screenHeight(context) * 0.01),
                  SizedBox(
                    height: 800,
                    child: DefaultTabController(
                      length: 3,
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          TabBar(
                            indicator: BoxDecoration(
                                border: Border.all(
                                    width: 0, color: Colors.transparent)),
                            labelColor: PerryColors.primaryBlue,
                            unselectedLabelColor: const Color(0xff455764),
                            // ignore: prefer_const_literals_to_create_immutables
                            tabs: [
                              const Tab(
                                text: 'All',
                              ),
                              const Tab(
                                text: 'Live Events',
                              ),
                              const Tab(
                                text: 'Online',
                              )
                            ],
                          ),
                          // ignore: prefer_const_constructors
                          Expanded(
                            child: TabBarView(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      // height: screenHeight(context) * 0.3,
                                      width: double.infinity,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        gradient: LinearGradient(
                                            colors: [
                                              Color(0xffBBB58D).withOpacity(0),
                                              Color(0xffBBB58D).withOpacity(1)
                                            ],
                                            begin: Alignment.centerRight,
                                            end: Alignment.centerLeft),
                                      ),
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            AppAsset.christmas,
                                            height: 59,
                                            width: 59,
                                          ),
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                "Black Christmas",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 14),
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              const Text(
                                                "19th, August 2023",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 12),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                    decoration: const BoxDecoration(
                                                        color: PerryColors
                                                            .primaryBlue,
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    10))),
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 10,
                                                        vertical: 3),
                                                    child: const Text(
                                                      "Online",
                                                      style: TextStyle(
                                                          color:
                                                              PerryColors.white,
                                                          fontWeight:
                                                              FontWeight.w400,
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
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    10))),
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 10,
                                                        vertical: 3),
                                                    child: const Text(
                                                      "Giveaway",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 10),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  Container(
                                                    child: const Text(
                                                      "Investment",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 10),
                                                    ),
                                                    decoration: const BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    10))),
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 10,
                                                        vertical: 3),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Gap(screenHeight(context) * 0.015),
                                    //second card
                                    Container(
                                      // height: screenHeight(context) * 0.3,
                                      width: double.infinity,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 10),
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        gradient: LinearGradient(
                                            colors: [
                                              Color(0xff7ccb),
                                              Color(0xffF8DF5F)
                                            ],
                                            begin: Alignment.centerRight,
                                            end: Alignment.centerLeft),
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
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  const Text(
                                                    "Banana Bootcamp",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 14),
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
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 12),
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
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    10))),
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 10,
                                                        vertical: 3),
                                                    child: const Text(
                                                      "Live",
                                                      style: TextStyle(
                                                          color:
                                                              PerryColors.white,
                                                          fontWeight:
                                                              FontWeight.w400,
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
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    10))),
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 10,
                                                        vertical: 3),
                                                    child: const Text(
                                                      "Crypto",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 10),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  Container(
                                                    child: const Text(
                                                      "Real estate",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 10),
                                                    ),
                                                    decoration: const BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    10))),
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 10,
                                                        vertical: 3),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Gap(screenHeight(context) * 0.015),
                                    //third card
                                    Container(
                                      // height: screenHeight(context) * 0.3,
                                      width: double.infinity,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 10),
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        gradient: LinearGradient(
                                            colors: [
                                              Color(0xff7ccb),
                                              Color(0xffF8DF5F)
                                            ],
                                            begin: Alignment.centerRight,
                                            end: Alignment.centerLeft),
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
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
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  const Text(
                                                    "Banana Bootcamp",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 14),
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
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 12),
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
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    10))),
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 10,
                                                        vertical: 3),
                                                    child: const Text(
                                                      "Live",
                                                      style: TextStyle(
                                                          color:
                                                              PerryColors.white,
                                                          fontWeight:
                                                              FontWeight.w400,
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
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    10))),
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 10,
                                                        vertical: 3),
                                                    child: const Text(
                                                      "Crypto",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 10),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  Container(
                                                    child: const Text(
                                                      "Real estate",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 10),
                                                    ),
                                                    decoration: const BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    10))),
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 10,
                                                        vertical: 3),
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
                                //second
                                Center(child: Text('Tab 2 content')),
                                Center(child: Text('Tab 3 content')),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
