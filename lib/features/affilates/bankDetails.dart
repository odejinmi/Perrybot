import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:perrybot/app/styles/styles.dart';

class BankDetails extends StatefulWidget {
  const BankDetails({super.key});

  @override
  State<BankDetails> createState() => _BankDetailsState();
}

class _BankDetailsState extends State<BankDetails> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(10),
        TextFormField(
          enableInteractiveSelection: false,
          decoration: InputDecoration(
              label: TextBold(
                'Bank Name',
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
              alignLabelWithHint: true,
              fillColor: PerryColors.ash,
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      const BorderSide(width: 1, color: Color(0xffC4C4C4))),
              focusColor: Colors.transparent,
              // suffix: SvgPicture.asset(AppAsset.mastercard),
              focusedBorder: const OutlineInputBorder(
                  borderSide:
                      BorderSide(color: PerryColors.primaryPink, width: 1)),
              hintText: 'Enter correct bank name',
              floatingLabelBehavior: FloatingLabelBehavior.always),
        ),
        const Gap(10),
        const Gap(10),
        TextFormField(
          enableInteractiveSelection: false,
          decoration: InputDecoration(
              label: TextBold(
                'Routing number',
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
              alignLabelWithHint: true,
              fillColor: PerryColors.ash,
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      const BorderSide(width: 1, color: Color(0xffC4C4C4))),
              focusColor: Colors.transparent,
              // suffix: SvgPicture.asset(AppAsset.mastercard),
              focusedBorder: const OutlineInputBorder(
                  borderSide:
                      BorderSide(color: PerryColors.primaryPink, width: 1)),
              hintText: '0000000000000',
              floatingLabelBehavior: FloatingLabelBehavior.always),
        ),
        const Gap(10),
        TextFormField(
          enableInteractiveSelection: false,
          decoration: InputDecoration(
              label: TextBold(
                'Account Number',
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
              alignLabelWithHint: true,
              fillColor: PerryColors.ash,
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      const BorderSide(width: 1, color: Color(0xffC4C4C4))),
              focusColor: Colors.transparent,
              // suffix: SvgPicture.asset(AppAsset.mastercard),
              focusedBorder: const OutlineInputBorder(
                  borderSide:
                      BorderSide(color: PerryColors.primaryPink, width: 1)),
              hintText: '0000000000000',
              floatingLabelBehavior: FloatingLabelBehavior.always),
        ),
        const Gap(10),
        TextFormField(
          enableInteractiveSelection: false,
          decoration: InputDecoration(
              label: TextBold(
                'Account Name',
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
              alignLabelWithHint: true,
              fillColor: PerryColors.ash,
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      const BorderSide(width: 1, color: Color(0xffC4C4C4))),
              focusColor: Colors.transparent,
              // suffix: SvgPicture.asset(AppAsset.mastercard),
              focusedBorder: const OutlineInputBorder(
                  borderSide:
                      BorderSide(color: PerryColors.primaryPink, width: 1)),
              hintText: 'Enter correct account name',
              floatingLabelBehavior: FloatingLabelBehavior.always),
        ),
      ],
    );
  }
}
