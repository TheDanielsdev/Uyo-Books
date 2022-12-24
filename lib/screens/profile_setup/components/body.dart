import 'package:flutter/material.dart';
import 'package:uyobooks/enums.dart';
import 'package:uyobooks/helper/snack_bar_logic.dart';
import 'package:uyobooks/models/icon_selection_model.dart';
import 'package:uyobooks/routes.dart';
import 'package:uyobooks/screens/profile_setup/components/goal_selection.dart';
import 'package:uyobooks/screens/profile_setup/components/how_much_time_selection.dart';
import 'package:uyobooks/screens/profile_setup/components/when_you_read_selection.dart';
import 'package:uyobooks/screens/sign_in/sign_in_screen.dart';

import '../../../components/app_snackbar.dart';
import '../../../components/circular_button.dart';
import '../../../models/text_selection_model.dart';
import '../../../size_config.dart';
import '../../../theme/texts_style.dart';
import 'age_selection.dart';
import 'gender_selection.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Widget> profileScreens = const [
    GenderSelection(),
    AgeSelection(),
    WhenYouReadSelection(),
    GoalSelection(),
    HowMuchTimeSelection()
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 200),
              child: IndexedStack(
                  key: ValueKey<int>(currentIndex), //using StateProvider<int>
                  index: currentIndex,
                  children: profileScreens),
            ),
          ),
          Container(
            height: getProportionateScreenHeight(150),
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${currentIndex + 1} of  ${profileScreens.length}',
                  style: AppTextStyle.subNBodyMeduim.copyWith(
                    fontSize: 18,
                  ),
                ),
                CircularButton(
                    onTap: () {
                      if (currentIndex + 1 < profileScreens.length) {
                        if (optionselection(
                            context: context, index: currentIndex)) {
                          currentIndex++;
                        }
                      } else {
                        Navigator.of(context).pushNamed(SignInScreen.routeName);
                      }
                      setState(() {});
                    },
                    text: 'Continue')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
