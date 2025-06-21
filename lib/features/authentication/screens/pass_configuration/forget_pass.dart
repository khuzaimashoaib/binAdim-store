import 'package:binadim_store/features/authentication/screens/pass_configuration/reset_pass.dart';
import 'package:binadim_store/utils/constants/sizes.dart';
import 'package:binadim_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).iconTheme.color),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.all(BASizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Heading
            Text(
              BATextStrings.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: BASizes.spaceBtwItems),
            Text(
              BATextStrings.forgetPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(height: BASizes.spaceBtwSections * 2),

            // Text field
            TextFormField(
              cursorColor: BAColors.grey,
              decoration: const InputDecoration(
                labelText: BATextStrings.email,
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),
            const SizedBox(height: BASizes.spaceBtwSections),
            // Buttons
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.off(() => const ResetPassword()),
                child: const Text(BATextStrings.submit),
              ),
            ),
            const SizedBox(height: BASizes.spaceBtwItems),
          ],
        ),
      ),
    );
  }
}
