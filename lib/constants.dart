import 'package:flutter/cupertino.dart';
import 'package:uyobooks/size_config.dart';

class Constants {
  static const onBoardingSlideOne = 'assets/images/slide_one.png';
  static const onBoardingSlideTwo = 'assets/images/slide_two.png';
  static const onBoardingSlideThree = 'assets/images/slide_three.png';
  static const splashScreenAsset = 'assets/anim/splash_screen.json';
  static const loadingAnimationAsset = 'assets/anim/loading_anim.json';
  static const successAnimationAsset = 'assets/anim/success_anim.json';
  static const errorAnimationAsset = 'assets/anim/error_anim.json';
  static const warningAnimationAsset = 'assets/anim/warning_anim.json';
  static const logo = 'assets/images/logo.png';
  static final kPagePadding = EdgeInsets.all(getProportionateScreenHeight(20));
  static const kDuration = Duration(milliseconds: 250);
  static const kOptionDuration = Duration(milliseconds: 400);
  static const kPrimaryColor = Color(0xFF111111);
  static const kPrimaryLightColor = Color(0xFFFFFFFF);
  static const kSecondaryLightColor = Color.fromARGB(255, 205, 205, 205);
  static const kWarningColor = Color.fromARGB(255, 255, 247, 176);
  static const kSuccessColor = Color.fromARGB(255, 181, 255, 184);
  static const kErrorColor = Color.fromARGB(255, 255, 215, 212);
  static final RegExp emailValidatorRegExp =
      RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  static const String kEmailNullError = "Please Enter your email";
  static const String kInvalidEmailError = "Please Enter a Valid Email";
  static const String kPassNullError = "Please Enter your password";
  static const String kShortPassError = "Password is too short";
  static const String kMatchPassError = "Passwords don't match";
  static const String kNamelNullError = "Please Enter your name";
  static const String kPhoneNumberNullError = "Please Enter your phone number";
  static const String kAddressNullError = "Please Enter your address";
}
