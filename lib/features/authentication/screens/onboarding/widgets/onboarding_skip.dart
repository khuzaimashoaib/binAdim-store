import 'package:flutter/material.dart';

import 'package:binadim_store/utils/helpers/helper_function.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../controllers/onboarding/onboarding_controller.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = BAHelperFunction.isDarkMode(context);

    return Positioned(
      top: BADeviceUtility.getAppBarHeight(context),
      right: BASizes.defaultSpace,
      child: TextButton(
        onPressed: () => controller.skipPage(),
        child: Text(
          "Skip",
          style: TextStyle(
            color: dark ? BAColors.light : BAColors.dark,
            fontSize: BASizes.fontSizeMD,
          ),
        ),
      ),
    );
  }
}
