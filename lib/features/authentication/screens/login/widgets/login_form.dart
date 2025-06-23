import 'package:binadim_store/features/authentication/screens/pass_configuration/forget_pass.dart';
import 'package:binadim_store/features/authentication/screens/signup/signup.dart';
import 'package:binadim_store/navigation_menu.dart';
import 'package:binadim_store/utils/constants/colors.dart';
import 'package:binadim_store/utils/constants/sizes.dart';
import 'package:binadim_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class BALoginForm extends StatelessWidget {
  const BALoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: BASizes.spaceBtwSections),
        child: Column(
          children: [
            // Email
            TextFormField(
              cursorColor: BAColors.grey,
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: BATextStrings.email,
              ),
            ),
            const SizedBox(height: BASizes.spaceBtwInputFields),

            // Password
            TextFormField(
              cursorColor: BAColors.grey,
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: BATextStrings.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),

            const SizedBox(height: BASizes.spaceBtwInputFields / 2),

            // Remember Me & Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(BATextStrings.rememberMe),
                  ],
                ),
                TextButton(
                  onPressed: () => Get.to(() => const ForgetPassword()),
                  child: const Text(BATextStrings.forgotPassword),
                ),
              ],
            ),
            const SizedBox(height: BASizes.spaceBtwSections),

            // Sign in Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => const NavigationMenu());
                },
                child: const Text(BATextStrings.signIn),
              ),
            ),
            const SizedBox(height: BASizes.spaceBtwItems),

            // Create Acc Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => const BASignUp()),
                child: const Text(BATextStrings.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
