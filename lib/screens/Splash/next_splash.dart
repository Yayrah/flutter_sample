import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pet_life_gh/constants.dart';
import 'package:pet_life_gh/screens/Home2/home_screen2.dart';

class NextSplashScreen extends StatelessWidget {
  const NextSplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splashIconSize: 300,
        backgroundColor: blue,
        splash: Image.asset("asset/images/logo.png"),
        nextScreen: HomeSreen2(),
        duration: 3000,
        pageTransitionType: PageTransitionType.leftToRightWithFade,
        splashTransition: SplashTransition.rotationTransition,
      ),
    );
  }
}
