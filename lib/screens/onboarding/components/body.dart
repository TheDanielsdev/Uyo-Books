import 'package:flutter/material.dart';
import 'package:uyobooks/screens/onboarding/components/onboarding_widget.dart';
import 'package:uyobooks/screens/onboarding/components/page_indicator.dart';
import 'package:uyobooks/screens/profile_setup/profile_setup_screen.dart';
import '../../../components/circular_button.dart';
import '../../../constants.dart';
import '../../../models/onboarding_model.dart';
import '../../../size_config.dart';
import '../../../theme/texts_style.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  PageController controller = PageController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: Constants.kPagePadding,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text.rich(
                      TextSpan(children: [
                        TextSpan(
                          text: '${currentIndex + 1}',
                          style: AppTextStyle.titleHeading.copyWith(
                            fontSize: getProportionateScreenHeight(30),
                          ),
                        ),
                        TextSpan(
                          
                          text: ' /3',
                          style: AppTextStyle.titleHeading.copyWith(
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () => Navigator.of(context)
                      .pushReplacementNamed(ProfileSetupScreen.routeName),
                  child: Text(
                    'Skip',
                    style: AppTextStyle.subNBodyReg
                        .copyWith(fontSize: 16, color: Constants.kPrimaryColor),
                  ),
                )
              ],
            ),
            Expanded(
              child: PageView.builder(
                physics: const BouncingScrollPhysics(),
                controller: controller,
                itemCount: onboardingItems.length,
                onPageChanged: (value) => setState(() => currentIndex = value),
                itemBuilder: ((context, index) {
                  return OnboardingWidget(
                      imageAsset: onboardingItems[index].assetName,
                      title: onboardingItems[index].subTitle,
                      subTitle: onboardingItems[index].title);
                }),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PageIndicator(
                  count: 3,
                  controller: controller,
                ),
                CircularButton(
                    onTap: () {
                      if ((currentIndex + 1) < onboardingItems.length) {
                        controller.nextPage(
                            duration: Constants.kDuration,
                            curve: Curves.easeInOut);
                      } else {
                        Navigator.of(context)
                            .pushReplacementNamed(ProfileSetupScreen.routeName);
                      }
                    },
                    text: 'Next')
              ],
            )
          ],
        ),
      ),
    );
  }
}
