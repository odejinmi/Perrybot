import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:perrybot/app/app.dart';
import 'package:perrybot/app/ui_helpers.dart';
import 'package:perrybot/core/core.dart';
import 'package:perrybot/features/affilates/widgets/sidepanel.dart';

class Affilates extends StatefulWidget {
  const Affilates({super.key});

  @override
  State<Affilates> createState() => _AffilatesState();
}

class _AffilatesState extends State<Affilates> {
  GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Color(0xff88F9CA).withOpacity(1),
          Color(0xff88F9CA).withOpacity(0),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
      ),
      child: Scaffold(
        key: _scaffoldState,
        backgroundColor: Colors.transparent,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
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
                                  text: 'Affiliate',
                                  style: TextStyle(
                                      color: PerryColors.primaryGreen))
                            ]))
                      ],
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 8),
                            decoration: BoxDecoration(
                                color: PerryColors.primaryBlue,
                                borderRadius: BorderRadius.circular(15)),
                            child: TextBold(
                              'Ranks',
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: PerryColors.white,
                            ),
                          ),
                        ),
                        TouchableOpacity(
                            onTap: (() {
                              _scaffoldState.currentState!.openEndDrawer();
                            }),
                            child: SvgPicture.asset(AppAsset.threeDotsMenu)),
                      ],
                    )
                  ],
                ),
                Gap(screenHeight(context) * 0.02),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  width: double.infinity,
                  height: 140,
                  decoration: BoxDecoration(
                      color: const Color(0xff54EDA3),
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextSemiBold(
                            'TOTAL INVESTED',
                            fontSize: 12,
                            color: PerryColors.tintedBlack,
                          ),
                          TouchableOpacity(
                              onTap: () {},
                              child: SvgPicture.asset(AppAsset.eye))
                        ],
                      ),
                      Column(
                        children: [
                          TextBold(
                            '0.00',
                            fontSize: 36,
                            fontWeight: FontWeight.w500,
                            color: PerryColors.tintedBlack,
                          ),
                          TextSemiBold(
                            'USD',
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: PerryColors.tintedBlack,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Gap(screenHeight(context) * 0.02),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
                  decoration: BoxDecoration(
                      color: PerryColors.primaryYellow,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextBold(
                        'TOTAL CASHED OUT',
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                      TextBold(
                        '0.00 USD',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )),
        endDrawer: Container(
          margin: EdgeInsets.only(top: screenHeight(context) * 0.08),
          child: const ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15)),
              child: Drawer(elevation: 1.0, child: AffiliateSidepanel())),
        ),
      ),
    );
  }
}
