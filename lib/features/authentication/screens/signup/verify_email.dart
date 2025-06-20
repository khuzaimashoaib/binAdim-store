import 'package:binadim_store/common/widgets/success_screen/success_screen.dart';
import 'package:binadim_store/features/authentication/screens/login/login.dart';
import 'package:binadim_store/utils/constants/image_strings.dart';
import 'package:binadim_store/utils/constants/sizes.dart';
import 'package:binadim_store/utils/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../../../../utils/helpers/helper_function.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(BASizes.defaultSpace),
          child: Column(
            children: [
              // Image
              Image(
                image: const AssetImage(BAImages.emailVerify),
                width: BAHelperFunction.screenWidth() * 6,
              ),
              const SizedBox(height: BASizes.spaceBtwSections),
              // Title & SubTitle
              Text(
                BATextStrings.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: BASizes.spaceBtwItems),
              Text(
                "khuzaima.shoaib@gmail.com",
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: BASizes.spaceBtwItems),
              Text(
                BATextStrings.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: BASizes.spaceBtwSections),
              // Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => {
                    Get.to(
                      () => SuccessScreen(
                        image: BAImages.accCreated,
                        title: BATextStrings.yourAccCreatedTitle,
                        subtitle: BATextStrings.yourAccCreatedSubTitle,
                        onPressed: () => Get.to(() => const LoginScreen()),
                      ),
                    ),
                  },
                  child: const Text(BATextStrings.baContinue),
                ),
              ),
              const SizedBox(height: BASizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(BATextStrings.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
