import '../constants.dart';

class OnboardingModel {
  final String assetName;
  final String title;
  final String subTitle;

  OnboardingModel(
      {required this.assetName, required this.title, required this.subTitle});
}
  List<OnboardingModel> onboardingItems = [
    OnboardingModel(
        assetName: Constants.onBoardingSlideOne,
        title: 'Habit of reading',
        subTitle: 'Reading Becomes Fun and Easy'),
    OnboardingModel(
        assetName: Constants.onBoardingSlideTwo,
        title: 'Learn anyhwere',
        subTitle: 'Read And listen Anywhere'),
    OnboardingModel(
        assetName: Constants.onBoardingSlideThree,
        title: 'Stick to your plan',
        subTitle: 'Set Your Personal Reading Goals')
  ];
