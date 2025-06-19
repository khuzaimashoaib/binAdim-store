import 'package:binadim_store/utils/constants/colors.dart';
import 'package:binadim_store/utils/constants/sizes.dart';
import 'package:binadim_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class BATermsAndConditionCheckBox extends StatelessWidget {
  const BATermsAndConditionCheckBox({super.key, required this.dark});

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 24,
          width: 24,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        const SizedBox(width: BASizes.spaceBtwItems),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '${BATextStrings.agreeTo} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: '${BATextStrings.privacyPolicy} ',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? BAColors.white : BAColors.primaryColor,
                  decoration: TextDecoration.underline,
                  decorationColor: dark
                      ? BAColors.white
                      : BAColors.primaryColor,
                ),
              ),

              TextSpan(
                text: '${BATextStrings.and} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: BATextStrings.termsOfUse,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? BAColors.white : BAColors.primaryColor,
                  decoration: TextDecoration.underline,
                  decorationColor: dark
                      ? BAColors.white
                      : BAColors.primaryColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
