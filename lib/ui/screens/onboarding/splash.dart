import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:perrybot/core/core.dart';
import 'package:get/get.dart';
import 'package:perrybot/ui/screens/onboarding/introduction.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> _toOnboard() async {
    await Get.to(() => const IntroductionScreen());
  }

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), _toOnboard);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(AppAsset.logo),
      ),
    );
  }
}
