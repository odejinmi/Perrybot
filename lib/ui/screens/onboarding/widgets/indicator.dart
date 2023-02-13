import 'package:flutter/material.dart';
import 'package:perrybot/app/styles/styles.dart';
import 'package:perrybot/app/ui_helpers.dart';

class IllustrationIndicator extends StatelessWidget {
  const IllustrationIndicator({
    super.key,
    required this.activeCard,
  });
  final int activeCard;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          3,
          (index) => AnimatedContainer(
            width: index == activeCard
                ? screenWidth(context) * 0.09
                : screenWidth(context) * 0.03,
            margin: const EdgeInsets.symmetric(horizontal: 2),
            duration: const Duration(milliseconds: 300),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: index == activeCard
                    ? PerryColors.primaryYellow
                    : PerryColors.buttonInactive),
          ),
        ),
      ),
    );
  }
}
