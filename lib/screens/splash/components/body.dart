import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import '../../onboarding/onboarding_screen.dart';

class  Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(
        const Duration(seconds: 3),
        () =>
            Navigator.of(context).popAndPushNamed(OnBoardingScreen.routeName));
    return  Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            Constants.splashScreenAsset,
            height: getProportionateScreenHeight(300),
            repeat: false,
          ),
        ],
      );
  }
}