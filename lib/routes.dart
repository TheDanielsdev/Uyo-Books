import 'package:flutter/cupertino.dart';
import 'package:uyobooks/screens/onboarding/onboarding_screen.dart';
import 'package:uyobooks/screens/profile_setup/profile_setup_screen.dart';
import 'package:uyobooks/screens/sign_in/sign_in_screen.dart';
import 'package:uyobooks/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  OnBoardingScreen.routeName: (context) => const OnBoardingScreen(),
  SplashScreen.routeName: (context) => const SplashScreen(),
  ProfileSetupScreen.routeName: (context) => const ProfileSetupScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
};
