import 'package:flutter/material.dart';
import 'package:perrybot/app/styles/styles.dart';
import 'package:perrybot/core/constants/fonts.dart';

/// Base text with black color and letter spacing set
class HabeepTextBase extends StatelessWidget {
  const HabeepTextBase(
    this.text, {
    this.style,
    this.textAlign = TextAlign.left,
    this.overflow = TextOverflow.visible,
    this.maxLines = 1,
    Key? key,
  }) : super(key: key);
  final String? text;
  final TextStyle? style;
  final TextAlign textAlign;
  final TextOverflow overflow;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    assert(text != null, 'test can not be null');
    return Text(
      text ?? '',
      style: const TextStyle(
        fontSize: 15,
        fontFamily: AppFonts.sora,
      ).merge(style),
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}

class TextBody extends HabeepTextBase {
  TextBody(
    String text, {
    Key? key,
    TextStyle? style,
    Color? color,
    double? fontSize,
    TextAlign textAlign = TextAlign.left,
    FontWeight fontWeight = FontWeight.w400,
    TextOverflow overflow = TextOverflow.visible,
    int maxLines = 2,
    double? height,
  }) : super(
          text,
          key: key,
          overflow: overflow,
          maxLines: maxLines,
          style: TextStyle(
            fontSize: fontSize ?? 14,
            color: color ?? PerryColors.textColor,
            fontWeight: fontWeight,
            height: height,
          ).merge(style),
          textAlign: textAlign,
        );
}

class H1 extends HabeepTextBase {
  H1(
    String text, {
    Key? key,
    Color? color,
    TextStyle? style,
    double? fontSize,
    FontWeight fontWeight = FontWeight.w900,
    TextAlign textAlign = TextAlign.left,
    TextOverflow overflow = TextOverflow.visible,
    int maxLines = 3,
  }) : super(
          text,
          key: key,
          overflow: overflow,
          maxLines: maxLines,
          style: TextStyle(
            fontSize: fontSize ?? 30,
            fontWeight: fontWeight,
            color: color ?? PerryColors.textColor,
          ).merge(style),
          textAlign: textAlign,
        );
}

class TextBold extends HabeepTextBase {
  TextBold(
    String text, {
    Key? key,
    TextStyle? style,
    double fontSize = 32,
    FontWeight fontWeight = FontWeight.w600,
    Color? color,
    TextAlign textAlign = TextAlign.left,
    TextOverflow overflow = TextOverflow.visible,
    int maxLines = 2,
  }) : super(
          text,
          key: key,
          overflow: overflow,
          maxLines: maxLines,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: color ?? PerryColors.textColor,
          ).merge(style),
          textAlign: textAlign,
        );
}

class TextSemiBold extends HabeepTextBase {
  TextSemiBold(
    String text, {
    Key? key,
    TextStyle? style,
    double? fontSize,
    Color? color,
    FontWeight fontWeight = FontWeight.w500,
    TextAlign textAlign = TextAlign.left,
    TextOverflow overflow = TextOverflow.visible,
    int maxLines = 2,
  }) : super(
          text,
          key: key,
          overflow: overflow,
          maxLines: maxLines,
          style: TextStyle(
            fontSize: fontSize ?? 14,
            color: color ?? PerryColors.textColor,
            fontWeight: fontWeight,
          ).merge(style),
          textAlign: textAlign,
        );
}

class TextSmall extends HabeepTextBase {
  TextSmall(
    String text, {
    double fontSize = 12,
    Key? key,
    TextStyle? style,
    Color? color,
    TextAlign textAlign = TextAlign.left,
    TextOverflow overflow = TextOverflow.visible,
    int maxLines = 2,
    FontStyle? fontStyle,
    FontWeight fontWeight = FontWeight.w300,
  }) : super(
          text,
          key: key,
          overflow: overflow,
          maxLines: maxLines,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: color,
            fontStyle: fontStyle,
          ).merge(style),
          textAlign: textAlign,
        );
}
