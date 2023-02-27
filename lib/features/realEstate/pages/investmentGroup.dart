import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:perrybot/app/app.dart';
import 'package:perrybot/core/core.dart';

class InvestmentGroup extends StatefulWidget {
  const InvestmentGroup({super.key});

  @override
  State<InvestmentGroup> createState() => _InvestmentGroupState();
}

class _InvestmentGroupState extends State<InvestmentGroup> {
  final List<Map> services = [
    {
      "name": "Jamine 4 Bedroom Flat. Boston",
      "image": AppAsset.room1,
      "amount": "500.00",
      "location": "Camioville, Tenson City.",
      "slot": "15 Slots left",
      "type": "Buy & Rent",
      "typeImage": AppAsset.bag
    },
    {
      "name": "Old 3 bedroom Duplex",
      "image": AppAsset.room1,
      "amount": "500.00",
      "location": "Ashford, Spain",
      "slot": "15 Slots left",
      "type": "Fix & Flip",
      "typeImage": AppAsset.house
    },
    {
      "name": "Jamine 4 Bedroom Flat. Boston",
      "image": AppAsset.room1,
      "amount": "500.00",
      "location": "Ashford, Spain",
      "slot": "15 Slots left",
      "type": "Buy & Rent",
      "typeImage": AppAsset.house,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color(0xffF988F4),
          Color(0xffFAB5FB),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Backarrow(color: Color(0xffC27DE2)),
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            fillColor: const Color(0xffF6E4FF),
                            filled: true,
                            hintText: "Search",
                            hintStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: PerryColors.darkTone),
                            suffix: Image.asset(
                              AppAsset.search,
                              width: 16,
                              height: 16,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: BorderSide.none)),
                      ),
                    ),
                    TouchableOpacity(
                      child: Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: Image.asset(
                          AppAsset.settings,
                          width: 32,
                          height: 32,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Gap(screenWidth(context) * 0.03),
              Row(
                children: [
                  Gap(screenWidth(context) * 0.015),
                  Pills(
                      padding: const EdgeInsets.symmetric(
                          vertical: 7, horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: PerryColors.secondaryYellow,
                      ),
                      child: Row(
                        children: [
                          TextSemiBold('All'),
                        ],
                      )),
                  Gap(screenWidth(context) * 0.015),
                  Pills(
                      padding: const EdgeInsets.symmetric(
                          vertical: 7, horizontal: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xffFFFDF2).withOpacity(0.5)),
                      child: Row(
                        children: [
                          TextSemiBold('Buy & Rent'),
                          Gap(screenWidth(context) * 0.01),
                          SvgPicture.asset(AppAsset.bag)
                        ],
                      )),
                  Gap(screenWidth(context) * 0.015),
                  Pills(
                      padding: const EdgeInsets.symmetric(
                          vertical: 7, horizontal: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xffFFFDF2).withOpacity(0.5)),
                      child: Row(
                        children: [
                          TextSemiBold('Fix & Flip'),
                          Gap(screenWidth(context) * 0.01),
                          SvgPicture.asset(AppAsset.house)
                        ],
                      )),
                  Gap(screenWidth(context) * 0.015),
                  Pills(
                      padding: const EdgeInsets.symmetric(
                          vertical: 7, horizontal: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xffFFFDF2).withOpacity(0.5)),
                      child: Row(
                        children: [
                          TextSemiBold('AirBnb'),
                          Gap(screenWidth(context) * 0.01),
                          SvgPicture.asset(AppAsset.airbnb)
                        ],
                      )),
                ],
              ),
              ListView.builder(
                  itemCount: services.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 10, top: 10),
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 10),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: PerryColors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            services[index]["image"],
                            width: double.infinity,
                          ),
                          const Gap(10),
                          TextBold(
                            services[index]['name'],
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                          const Gap(10),
                          Row(
                            children: [
                              TextSemiBold(
                                "\$",
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: PerryColors.primaryBlue,
                              ),
                              TextSemiBold(
                                services[index]["amount"],
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: PerryColors.primaryBlue,
                              ),
                            ],
                          ),
                          const Gap(10),
                          TextBold(
                            services[index]['location'],
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                          const Gap(10),
                          Row(
                            children: [
                              Row(
                                children: [
                                  TextBold(
                                    services[index]['type'],
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  const Gap(5),
                                  SvgPicture.asset(services[index]['typeImage'])
                                ],
                              ),
                              const Gap(10),
                              Row(
                                children: [
                                  TextBold(
                                    services[index]['slot'],
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  const Gap(5),
                                  SvgPicture.asset(AppAsset.halfMoon)
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  })
            ],
          ),
        )),
      ),
    );
  }
}
