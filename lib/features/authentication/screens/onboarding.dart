import 'package:binadim_store/utils/constants/image_strings.dart';
import 'package:binadim_store/utils/constants/sizes.dart';
import 'package:binadim_store/utils/constants/text_strings.dart';
import 'package:binadim_store/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scroll Pages
          PageView(
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
        ],
      ),
    );
  }
}

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(BASizes.defaultSpace),
      child: Column(
        children: [
          Image(
            image: AssetImage(image),
            height: BAHelperFunction.screenHeight() * 0.6,
            width: BAHelperFunction.screenWidth() * 0.8,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: BASizes.spaceBtwItems),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
