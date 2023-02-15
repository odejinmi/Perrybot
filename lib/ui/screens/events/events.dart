import 'package:flutter/material.dart';

class Events extends StatelessWidget {
  const Events({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Color(0xffFEA9FB).withOpacity(1),
          Color(0xffF988F4).withOpacity(0),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
      ),
    );
  }
}
