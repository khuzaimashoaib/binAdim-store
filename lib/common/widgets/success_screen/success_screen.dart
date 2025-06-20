import 'package:binadim_store/common/styles/spacing_styles.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';
import '../../../utils/helpers/helper_function.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    this.onPressed,
  });

  final String image, title, subtitle;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: BASpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              // Image
              Image(
                image: AssetImage(image),
                width: BAHelperFunction.screenWidth() * 6,
              ),
              const SizedBox(height: BASizes.spaceBtwSections),
              // Title & SubTitle
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: BASizes.spaceBtwItems),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: BASizes.spaceBtwSections),

              // Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPressed,
                  child: const Text(BATextStrings.baContinue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
