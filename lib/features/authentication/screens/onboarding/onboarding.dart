import 'package:binadim_store/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:binadim_store/features/authentication/screens/onboarding/widgets/on_boarding_navigation.dart';
import 'package:binadim_store/features/authentication/screens/onboarding/widgets/on_boarding_next_button.dart';
import 'package:binadim_store/utils/constants/image_strings.dart';
import 'package:binadim_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/onboarding_page.dart';
import 'widgets/onboarding_skip.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scroll Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: BAImages.onBoardingImage1,
                title: BATextStrings.onBoardingTitle1,
                subtitle: BATextStrings.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: BAImages.onBoardingImage2,
                title: BATextStrings.onBoardingTitle2,
                subtitle: BATextStrings.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: BAImages.onBoardingImage3,
                title: BATextStrings.onBoardingTitle3,
                subtitle: BATextStrings.onBoardingSubTitle3,
              ),
            ],
          ),

          // Skip Button
          const OnBoardingSkip(),

          // Dot NAvigation SmoothPageIndicator
          const OnBoardingNavigation(),

          // Circular Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
