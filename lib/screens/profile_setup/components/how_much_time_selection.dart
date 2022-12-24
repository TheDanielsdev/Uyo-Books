import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uyobooks/screens/profile_setup/components/profile_grid_selection_widget.dart';

class HowMuchTimeSelection extends StatelessWidget {
  const HowMuchTimeSelection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ProfileGridSelectionWidget(
        subQuestion: 'How much time do you',
        mainQuestion: 'Spend on Books?',
        gridWidget: SizedBox());
  }
}
