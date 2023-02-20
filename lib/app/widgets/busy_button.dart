import 'package:flutter/material.dart';
import 'package:perrybot/app/styles/styles.dart';

class BusyButton extends StatelessWidget {
  const BusyButton({
    required this.title,
    required this.onTap,
    this.disabled = false,
    this.color = PerryColors.primaryBackground,
    this.textColor,
    this.borderRadius,
    this.width,
    this.height,
    Key? key,
  }) : super(key: key);
  final String title;
  final Color? color;
  final Color? textColor;
  final double? width;
  final double? height;
  final VoidCallback onTap;
  final bool disabled;
  final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: disabled ? null : onTap,
      child: Container(
        height: height ?? 50,
        width: width ?? double.infinity,
        decoration: BoxDecoration(
          borderRadius: borderRadius ?? BorderRadius.circular(5),
          color: disabled ? PerryColors.buttonInactive : color,
        ),
        child: Center(
          child: TextBody(
            title,
            color: textColor ?? PerryColors.textColor,
            style: const TextStyle(
              decoration: TextDecoration.none,
            ),
          ),
        ),
      ),
    );
  }
}
