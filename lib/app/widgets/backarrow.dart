import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:perrybot/app/widgets/touchable_opacity.dart';

class Backarrow extends StatelessWidget {
  final Color color;
  const Backarrow({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TouchableOpacity(
      child: Container(
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        alignment: Alignment.center,
        child: const Center(
          child: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.white,
          ),
        ),
      ),
      onTap: () {
        Get.back();
      },
    );
  }
}
