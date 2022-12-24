import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Model and list for selections with IconData

class IconSelectionModel {
  final String item;
  bool isSelected;
  final IconData icon;

  IconSelectionModel(this.item, this.isSelected, this.icon);
}

List<IconSelectionModel> genderList = [
  IconSelectionModel('Male', false, Icons.male),
  IconSelectionModel('Female', false, Icons.female),
];

List<IconSelectionModel> whenToReadList = [
  IconSelectionModel(
      'After morning', false, Icons.emoji_food_beverage_outlined),
  IconSelectionModel('Before Sleep', false, Icons.nightlight_round_outlined),
  IconSelectionModel('During launch Break', false, Icons.local_pizza_outlined),
  IconSelectionModel('While commuting', false, Icons.local_taxi_outlined)
];

List<IconSelectionModel> goalList = [
  IconSelectionModel('Win at work', false, Icons.workspace_premium_outlined),
  IconSelectionModel('Be productive', false, CupertinoIcons.tree),
  IconSelectionModel('Build strong family', false, Icons.family_restroom_outlined),
  IconSelectionModel('Have more money', false, CupertinoIcons.money_dollar_circle)
];
