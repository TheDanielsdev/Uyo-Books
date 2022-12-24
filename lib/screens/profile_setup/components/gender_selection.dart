import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uyobooks/constants.dart';
import 'package:uyobooks/screens/profile_setup/components/circular_selection_buttons.dart';
import 'package:uyobooks/screens/profile_setup/components/profile_grid_selection_widget.dart';
import 'package:uyobooks/size_config.dart';
import 'package:uyobooks/theme/texts_style.dart';

import '../../../models/icon_selection_model.dart';

class GenderSelection extends StatefulWidget {
  const GenderSelection({
    Key? key,
  }) : super(key: key);

  @override
  State<GenderSelection> createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ProfileGridSelectionWidget(
        subQuestion: 'What\'s',
        mainQuestion: 'Your Gender ?',
        gridWidget: Expanded(
          child: GridView.builder(
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.3,
                crossAxisCount: 2,
              ),
              itemCount: genderList.length,
              itemBuilder: ((context, index) {
                return Column(
                  children: [
                    ZoomIn(
                      delay: Duration(milliseconds: index * 300),
                      duration: Constants.kOptionDuration,
                      child: Center(
                        child: CircularOptionButtons(
                          index: index,
                          onTap: () {
                            setState(() {});
                            for (var option in genderList) {
                              if (option == genderList[index]) {
                                option.isSelected = true;
                              } else {
                                option.isSelected = false;
                              }
                            }
                          },
                          isSelected: genderList.elementAt(index).isSelected,
                          child: Center(
                            child: Icon(
                              genderList.elementAt(index).icon,
                              size: getProportionateScreenHeight(40),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(15),
                    ),
                    FadeIn(
                      delay: Duration(milliseconds: index * 300),
                      duration: Constants.kOptionDuration,
                      child: Text(
                        genderList[index].item,
                        style: AppTextStyle.subNBodyBold.copyWith(
                            fontSize: getProportionateScreenHeight(20)),
                      ),
                    )
                  ],
                );
              })),
        ));
  }
}
