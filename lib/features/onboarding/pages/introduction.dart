import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:perrybot/app/styles/styles.dart';
import 'package:perrybot/app/ui_helpers.dart';
import 'package:perrybot/app/widgets/touchable_opacity.dart';
import 'package:perrybot/core/core.dart';
import 'package:gap/gap.dart';
import 'package:perrybot/features/onboarding/widgets/indicator.dart';
import 'package:get/get.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({super.key});

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  int currentIndex = 0;

  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  void dispose() {
    _pageController.dispose();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      controller: _pageController,
      onPageChanged: (int index) {
        setState(() {
          currentIndex = index;
        });
      },
      children: [
        Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xff9E6AE0), Color(0xffF07591)])),
          child: Scaffold(
              backgroundColor: Colors.transparent,
              body: SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(AppAsset.perryLogo),
                          Gap(screenWidth(context) * 0.018),
                          TextBold('Perry', fontSize: 29.71)
                        ],
                      ),
                      TextBold(
                        'Invest in Real Estate as a Group',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        textAlign: TextAlign.center,
                      ),
                      Image.asset(AppAsset.onboard1),
                      TextBold(
                        'Perry Makes Real Estate Investment affordable & Easy for under represented communities.',
                        textAlign: TextAlign.center,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IllustrationIndicator(
                            activeCard: currentIndex,
                          ),
                          TouchableOpacity(
                              onTap: (() {
                                if (currentIndex == 2) {
                                } else {
                                  _pageController.nextPage(
                                    duration: const Duration(milliseconds: 10),
                                    curve: Curves.easeOutCirc,
                                  );
                                }
                              }),
                              child: Container(
                                width: screenWidth(context) * 0.45,
                                height: screenHeight(context) * 0.05,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: PerryColors.buttonInactive),
                                child: Center(
                                  child: TextSemiBold(
                                    currentIndex > 1 ? 'GET STARTED' : 'SKIP',
                                    textAlign: TextAlign.center,
                                    fontSize: 12,
                                  ),
                                ),
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              )),
        ),
        Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xffF8F988), Color(0xffF07591)])),
          child: Scaffold(
              backgroundColor: Colors.transparent,
              body: SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(AppAsset.perryLogo),
                          Gap(screenWidth(context) * 0.018),
                          TextBold('Perry', fontSize: 29.71)
                        ],
                      ),
                      TextBold(
                        'Financial Education',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        textAlign: TextAlign.center,
                      ),
                      Image.asset(AppAsset.onboard2),
                      TextBold(
                        'Learn About Real Estate Investments and other Financial Literacy education programs on Perry Academy.',
                        textAlign: TextAlign.center,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IllustrationIndicator(
                            activeCard: currentIndex,
                          ),
                          TouchableOpacity(
                              onTap: (() {
                                if (currentIndex == 2) {
                                  Get.toNamed('/signin');
                                } else {
                                  _pageController.nextPage(
                                    duration: const Duration(milliseconds: 10),
                                    curve: Curves.easeOutCirc,
                                  );
                                }
                              }),
                              child: Container(
                                width: screenWidth(context) * 0.45,
                                height: screenHeight(context) * 0.05,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: PerryColors.buttonInactive),
                                child: Center(
                                  child: TextSemiBold(
                                    currentIndex > 1 ? 'GET STARTED' : 'SKIP',
                                    textAlign: TextAlign.center,
                                    fontSize: 12,
                                  ),
                                ),
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              )),
        ),
        Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xff46BD9C), Color(0xffF07591)])),
          child: Scaffold(
              backgroundColor: Colors.transparent,
              body: SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(AppAsset.perryLogo),
                          Gap(screenWidth(context) * 0.018),
                          TextBold('Perry', fontSize: 29.71)
                        ],
                      ),
                      TextBold(
                        'Share the Opportunity Help Others Become Financially Free!',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        textAlign: TextAlign.center,
                      ),
                      Image.asset(AppAsset.onboard1),
                      TextBold(
                        'Get paid when you introduce others to the Perry Cooperative Financial Opportunities.',
                        textAlign: TextAlign.center,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IllustrationIndicator(
                            activeCard: currentIndex,
                          ),
                          TouchableOpacity(
                              onTap: (() {
                                if (currentIndex == 2) {
                                  Get.toNamed('/signin');
                                } else {
                                  _pageController.nextPage(
                                    duration: const Duration(milliseconds: 10),
                                    curve: Curves.easeOutCirc,
                                  );
                                }
                              }),
                              child: Container(
                                width: screenWidth(context) * 0.45,
                                height: screenHeight(context) * 0.05,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: PerryColors.buttonInactive),
                                child: Center(
                                  child: TextSemiBold(
                                    currentIndex > 1 ? 'GET STARTED' : 'SKIP',
                                    textAlign: TextAlign.center,
                                    fontSize: 12,
                                  ),
                                ),
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              )),
        )
      ],
    );
  }
}
