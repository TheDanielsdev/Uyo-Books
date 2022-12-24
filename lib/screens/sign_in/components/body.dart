import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:uyobooks/components/app_snackbar.dart';
import 'package:uyobooks/components/circular_button.dart';
import 'package:uyobooks/constants.dart';
import 'package:uyobooks/helper/keyboard.dart';
import 'package:uyobooks/screens/sign_in/components/sigin_form.dart';
import 'package:uyobooks/size_config.dart';
import 'package:uyobooks/theme/texts_style.dart';

import '../../../enums.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Stack(
      alignment: Alignment.center,
      children: [
        Container(
          padding: Constants.kPagePadding,
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadeInDown(
                        from: 30,
                        duration: const Duration(milliseconds: 800),
                        child: Row(
                          children: [
                            SizedBox(
                              height: getProportionateScreenHeight(100),
                            ),
                            Image.asset(
                              Constants.logo,
                              height: getProportionateScreenHeight(50),
                            ),
                            Text(
                              'UyoBooks',
                              style: AppTextStyle.titleHeading.copyWith(
                                  fontSize: getProportionateScreenHeight(20)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(20),
                      ),
                      FadeInDown(
                        delay: const Duration(milliseconds: 500),
                        from: 30,
                        duration: const Duration(milliseconds: 800),
                        child: Text('Log in with Email',
                            style: AppTextStyle.titleHeading.copyWith(
                                fontSize: getProportionateScreenHeight(50))),
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(70),
                      ),
                      SignInForm(
                        formkey: formkey,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'New to UyoBooks?',
                        style: AppTextStyle.subNBodyMeduim.copyWith(
                            fontSize: getProportionateScreenHeight(16),
                            color: Colors.black38),
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(5),
                      ),
                      InkWell(
                        onTap: () {
                          showSnackBar(
                              context: context,
                              messageType: Message.error,
                              snackText: 'An error with internet occured ');
                        },
                        child: Text(
                          'Sign up',
                          style: AppTextStyle.subNBodyBold.copyWith(
                            fontSize: getProportionateScreenHeight(16),
                            color: Constants.kPrimaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  CircularButton(
                      onTap: () {
                        KeyboardUtil.hideKeyboard(context);
                        if (formkey.currentState!.validate()) {
                          showSnackBar(
                              context: context,
                              messageType: Message.success,
                              snackText: 'Successfully signed in');
                        } else {
                          showSnackBar(
                              context: context,
                              messageType: Message.error,
                              snackText:
                                  'Could not log you in, invalid details');
                        }
                      },
                      text: 'Sign in'),
                ],
              )
            ],
          ),
        ),
        // Stack(
        //   alignment: Alignment.center,
        //   children: [
        //     Container(
        //       color: Colors.black26,
        //     ),
        //     const CircularProgressIndicator(
        //       strokeWidth: 8,
        //       color: Constants.kPrimaryColor,
        //     ),
        //   ],
        // )
      ],
    ));
  }
}
