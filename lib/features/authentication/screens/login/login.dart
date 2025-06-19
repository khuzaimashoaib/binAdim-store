import 'package:binadim_store/common/styles/spacing_styles.dart';
import 'package:binadim_store/common/widgets/login_signup/b_a_form_divider.dart';
import 'package:binadim_store/common/widgets/login_signup/b_a_social_buttons.dart';
import 'package:binadim_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:binadim_store/features/authentication/screens/login/widgets/login_header.dart';
import 'package:binadim_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_function.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BAHelperFunction.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: BASpacingStyle.paddingWithAppBarHeight,
          // Main Column
          child: Column(
            children: [
              //  Header Logo, Title, Subtitle
              BALoginHeader(dark: dark),
              // Form
              const BALoginForm(),
              // Divider
              BAFormDivider(
                dark: dark,
                dividerText: BATextStrings.orSignInWith.capitalize!,
              ),

              const SizedBox(height: BASizes.spaceBtwSections),
              // Footer
              const BASocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
