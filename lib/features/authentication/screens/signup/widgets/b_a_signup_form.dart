import 'package:binadim_store/features/authentication/screens/signup/verify_email.dart';
import 'package:binadim_store/features/authentication/screens/signup/widgets/b_a_terms_and_condition_check_box.dart';
import 'package:binadim_store/utils/constants/sizes.dart';
import 'package:binadim_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';

class BASignupForm extends StatelessWidget {
  const BASignupForm({super.key, required this.dark});

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          //  First & Last Name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  cursorColor: BAColors.grey,
                  expands: false,
                  decoration: InputDecoration(
                    labelText: BATextStrings.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: BASizes.spaceBtwInputFields),

              Expanded(
                child: TextFormField(
                  cursorColor: BAColors.grey,
                  expands: false,
                  decoration: InputDecoration(
                    labelText: BATextStrings.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: BASizes.spaceBtwInputFields),

          // Username
          TextFormField(
            cursorColor: BAColors.grey,
            expands: false,
            decoration: InputDecoration(
              labelText: BATextStrings.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: BASizes.spaceBtwInputFields),

          // Email
          TextFormField(
            cursorColor: BAColors.grey,
            expands: false,
            decoration: InputDecoration(
              labelText: BATextStrings.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: BASizes.spaceBtwInputFields),

          // Phone Number
          TextFormField(
            cursorColor: BAColors.grey,
            expands: false,
            decoration: InputDecoration(
              labelText: BATextStrings.phoneNumber,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: BASizes.spaceBtwInputFields),

          // Password
          TextFormField(
            cursorColor: BAColors.grey,
            expands: false,
            decoration: InputDecoration(
              labelText: BATextStrings.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: BASizes.spaceBtwSections),

          // Terms & Conditions & Checkbox
          BATermsAndConditionCheckBox(dark: dark),
          const SizedBox(height: BASizes.spaceBtwSections),

          // Signup Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmailScreen()),
              child: Text(BATextStrings.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
