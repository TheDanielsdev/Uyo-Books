// Models and list for selection using text
class TextSelectionModel {
  final String ageRange;
  bool isSelected;

  TextSelectionModel(this.ageRange, this.isSelected);
}

List<TextSelectionModel> ageList = [
  TextSelectionModel('12-39', false),
  TextSelectionModel('30-39', false),
  TextSelectionModel('40-49', false),
  TextSelectionModel('50+', false)
];
