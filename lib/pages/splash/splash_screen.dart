import 'package:flutter/material.dart';
import 'package:linkedin_clone/constants/assets_const.dart';
import 'package:linkedin_clone/constants/style.dart';
import 'package:linkedin_clone/pages/onboarding/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 3000)).then(
      (value) {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const OnBoardingScreen()));
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPallette.linkedInWhiteFFFFFF,
      body: Center(child: Image.asset(AssetConst.APP_LOGO)),
    );
  }
}
