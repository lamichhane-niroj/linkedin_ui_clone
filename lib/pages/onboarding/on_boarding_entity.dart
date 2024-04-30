import 'package:linkedin_clone/constants/assets_const.dart';

class OnBoardingEntity{
  final String? title;
  final String? image;

  OnBoardingEntity({required this.title, required this.image});

  static List<OnBoardingEntity> onBoardingData = [
    OnBoardingEntity(
      image: AssetConst.ON_BOARDING_1,
      title: "Find and land your next job",
    ),
    OnBoardingEntity(
        image: AssetConst.ON_BOARDING_2,
        title: "Build your nextwork on the go",
    ),
    OnBoardingEntity(
        image: AssetConst.ON_BOARDING_3,
        title: "Stay ahead with curated content for\nyour career",
    ),
  ];
}