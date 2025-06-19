import 'package:binadim_store/common/widgets/login_signup/b_a_form_divider.dart';
import 'package:binadim_store/common/widgets/login_signup/b_a_social_buttons.dart';
import 'package:binadim_store/features/authentication/screens/signup/widgets/b_a_signup_form.dart';
import 'package:binadim_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_function.dart';

class BASignUp extends StatelessWidget {
  const BASignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BAHelperFunction.isDarkMode(context);
    final dividerText = BATextStrings.orSignUpWith.capitalize!;

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: dark ? BAColors.light : BAColors.dark),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(BASizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                BATextStrings.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: BASizes.spaceBtwSections),

              // Form
              BASignupForm(dark: dark),
              const SizedBox(height: BASizes.spaceBtwSections),
              // Divider
              BAFormDivider(dark: dark, dividerText: dividerText),

              const SizedBox(height: BASizes.spaceBtwSections),
              // Footer
              BASocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
