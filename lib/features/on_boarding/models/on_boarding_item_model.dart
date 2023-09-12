import 'package:stylish/core/resources/asset_manager.dart';
import 'package:stylish/core/resources/string_manager.dart';

class OnBoardingItemModel {
  final String image;
  final String title;
  final String body;

  OnBoardingItemModel({
    required this.image,
    required this.title,
    required this.body,
  });
}

List<OnBoardingItemModel> items = [
  OnBoardingItemModel(
    image: AssetManager.onboarding1,
    title: StringManager.chooseProducts,
    body: StringManager.boardingText1,
  ),
  OnBoardingItemModel(
    image: AssetManager.onboarding2,
    title: StringManager.makePayment,
    body: StringManager.boardingText2,
  ),
  OnBoardingItemModel(
    image: AssetManager.onboarding3,
    title: StringManager.getYourOrder,
    body: StringManager.boardingText3,
  ),
];
