import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Backarrow extends StatelessWidget {
  final Color color;
  const Backarrow({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        alignment: Alignment.center,
        child: const Icon(
          Icons.arrow_back_ios,
          size: 15,
          color: Colors.white,
        ),
      ),
      onTap: () {
        Get.back();
      },
    );
  }
}
