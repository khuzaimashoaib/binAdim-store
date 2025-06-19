import 'package:binadim_store/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:binadim_store/utils/constants/colors.dart';
import 'package:binadim_store/utils/constants/sizes.dart';
import 'package:binadim_store/utils/device/device_utility.dart';
import 'package:binadim_store/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingNavigation extends StatelessWidget {
  const OnBoardingNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = BAHelperFunction.isDarkMode(context);

    return Positioned(
      bottom: BADeviceUtility.getBottomNavigationBarHeight() + 25,
      left: BASizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? BAColors.light : BAColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}
