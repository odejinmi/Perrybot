import 'package:flutter/material.dart';
import 'package:perrybot/app/styles/styles.dart';
import 'package:perrybot/app/ui_helpers.dart';

class ColoredLinearPercentIndicator extends StatelessWidget {
  final double percent;
  final double width;
  final double height;
  final List<Color> colors;

  const ColoredLinearPercentIndicator({
    Key? key,
    required this.percent,
    this.width = 200,
    this.height = 10,
    required this.colors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Color> _colors = colors;
    if (colors.length == 1) {
      _colors = [colors[0], colors[0]];
    }

    return Container(
      width: width,
      height: height,
      child: Stack(
        children: [
          LinearProgressIndicator(
            value: percent / 100,
            minHeight: 100.0,
            backgroundColor: _colors.first,
            valueColor: AlwaysStoppedAnimation<Color>(_colors.last),
          ),
          Container(
            width: width * percent / 100,
            height: height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: _colors,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
