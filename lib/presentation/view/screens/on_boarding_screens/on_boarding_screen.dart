import 'package:flutter/material.dart';
import 'package:onboarding_intro_screen/onboarding_screen.dart';
import 'package:srkl_new_v1/core/constance/app_router.dart';
import 'package:srkl_new_v1/core/constance/color_assets.dart';
import 'package:srkl_new_v1/core/constance/images_asset.dart';
import 'package:srkl_new_v1/core/constance/strings_assets.dart';

class OnboardingIntroScreen extends StatefulWidget {
  const OnboardingIntroScreen({super.key});

  @override
  State<OnboardingIntroScreen> createState() => _MyAppState();
}

class _MyAppState extends State<OnboardingIntroScreen> {
  @override
  Widget build(BuildContext context) {
    return OnBoardingScreen(
      onSkip: () {
        Navigator.pushNamed(context, Routes.login);
      },
      showPrevNextButton: true,
      showIndicator: true,
      backgourndColor: Colors.white,
      activeDotColor: ColorAsset.mainColor,
      deactiveDotColor: ColorAsset.mainColor,
      iconColor: ColorAsset.mainColor,
      // leftIcon: Icons.smart_button,
      rightIcon: Icons.arrow_forward_ios,
      iconSize: 30,
      pages: [
        OnBoardingModel(
            image: Image.asset(AssetPath.onBording1),
            title: AssetString.onBoardingTitle1,
            body: AssetString.onBoardingBody1),
        OnBoardingModel(
            image: Image.asset(AssetPath.onBording2),
            title: AssetString.onBoardingTitle2,
            body: AssetString.onBoardingBody2),
        OnBoardingModel(
            image: Image.asset(AssetPath.onBording1),
            title: AssetString.onBoardingTitle3,
            body: AssetString.onBoardingBody3),
      ],
    );
  }
}
