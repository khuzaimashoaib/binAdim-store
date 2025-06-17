import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../controllers.onboarding/onboarding_controller.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;

    return Positioned(
      top: BADeviceUtility.getAppBarHeight(context),
      right: BASizes.defaultSpace,
      child: TextButton(
        onPressed: () => controller.skipPage(),
        child: const Text("Skip"),
      ),
    );
  }
}
