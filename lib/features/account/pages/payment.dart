import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:perrybot/app/app.dart';
import 'package:perrybot/app/styles/fonts.dart';
import 'package:perrybot/app/styles/styles.dart';
import 'package:perrybot/app/ui_helpers.dart';
import 'package:perrybot/color/colors.dart';
import 'package:perrybot/core/constants/constants.dart';

import '../../../app/widgets/backarrow.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  late final bool focus;

  void _showAddCard(BuildContext ctx) {
    showModalBottomSheet(
        elevation: 10,
        backgroundColor: PerryColors.white,
        context: ctx,
        builder: (ctx) => Container(
              padding: const EdgeInsets.symmetric(vertical: 26, horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextBold(
                        'Add new Card',
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                      TouchableOpacity(
                        onTap: (() => Get.back()),
                        child: TextSemiBold(
                          'Cancel',
                          color: const Color(0xff6B7A82),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                  const Gap(22),
                  TextBold(
                    'Enter new Card details',
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    textAlign: TextAlign.left,
                  ),
                  const Gap(12),
                  Form(
                      child: Column(
                    children: [
                      TextFormField(
                        enableInteractiveSelection: false,
                        decoration: InputDecoration(
                            label: TextBold(
                              'Name on card',
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                            alignLabelWithHint: true,
                            fillColor: const Color(0xffEBEBEB),
                            filled: true,
                            border: InputBorder.none,
                            focusColor: Colors.transparent,
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: PerryColors.primaryPink, width: 1)),
                            hintText: 'Chukwuemeka Sammy',
                            floatingLabelBehavior:
                                FloatingLabelBehavior.always),
                      ),
                      const Gap(10),
                      TextFormField(
                        enableInteractiveSelection: false,
                        decoration: InputDecoration(
                            label: TextBold(
                              'Card number',
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                            alignLabelWithHint: true,
                            fillColor: const Color(0xffEBEBEB),
                            filled: true,
                            border: InputBorder.none,
                            focusColor: Colors.transparent,
                            suffix: SvgPicture.asset(AppAsset.mastercard),
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: PerryColors.primaryPink, width: 1)),
                            hintText: '3435 4545 5567 2324',
                            floatingLabelBehavior:
                                FloatingLabelBehavior.always),
                      ),
                      const Gap(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: TextFormField(
                              enableInteractiveSelection: false,
                              decoration: InputDecoration(
                                  label: TextBold(
                                    'CVV',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  alignLabelWithHint: true,
                                  fillColor: const Color(0xffEBEBEB),
                                  filled: true,
                                  border: InputBorder.none,
                                  focusColor: Colors.transparent,
                                  focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: PerryColors.primaryPink,
                                          width: 1)),
                                  hintText: '365',
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always),
                            ),
                          ),
                          const Gap(10),
                          Expanded(
                            child: TextFormField(
                              enableInteractiveSelection: false,
                              decoration: InputDecoration(
                                  label: TextBold(
                                    'Exp Date',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  alignLabelWithHint: true,
                                  fillColor: const Color(0xffEBEBEB),
                                  filled: true,
                                  border: InputBorder.none,
                                  focusColor: Colors.transparent,
                                  focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: PerryColors.primaryPink,
                                          width: 1)),
                                  hintText: '12 / 24',
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always),
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
                  const Spacer(),
                  Center(
                    child: BusyButton(
                        borderRadius: BorderRadius.circular(15),
                        title: 'Save',
                        color: const Color(0xff5FDB64),
                        width: 100,
                        onTap: (() {})),
                  ),
                  const Gap(10)
                ],
              ),
            ));
  }

  @override
  void initState() {
    focus = false;
    super.initState();
  }

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
        title: Text(
          "payment".tr,
          style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: Color(0xff000E3B)),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.wallet,
              color: Color(0xff2255F8),
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "payment_card".tr,
                  style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: Color(0xff212D33)),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: const BoxDecoration(
                  color: Color(0xffFFE08F),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Text(
                        "Oluwafemi Joshua",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 12),
                      ),
                      Spacer(),
                      Text(
                        "Exp 12/24",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                            fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "***********2 3780",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextBold(
              "Payout Details",
              fontSize: 14,
              fontWeight: FontWeight.w700,
              textAlign: TextAlign.start,
            ),
            Gap(screenHeight(context) * 0.008),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: const BoxDecoration(
                  color: Color(0xffFFE08F),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextBold(
                    "Afro Fuji Bank",
                    style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: PerryColors.primaryBlue),
                  ),
                  SizedBox(
                    height: screenHeight(context) * 0.01,
                  ),
                  TextBold(
                    "June Allen",
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 12),
                  ),
                  SizedBox(
                    height: screenHeight(context) * 0.01,
                  ),
                  TextBold(
                    "3249600465406",
                    style: const TextStyle(
                        fontWeight: FontWeight.w400, fontSize: 16),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            Center(
              child: BusyButton(
                  title: "change_card".tr,
                  color: PerryColors.primaryBlue,
                  textColor: PerryColors.white,
                  width: screenWidth(context) * 0.35,
                  onTap: (() {
                    _showAddCard(context);
                  })),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: BusyButton(
                  title: "remove_card".tr,
                  color: PerryColors.primaryPink,
                  textColor: PerryColors.white,
                  width: screenWidth(context) * 0.35,
                  onTap: (() {})),
            ),
          ],
        ),
      ),
    );
  }
}
