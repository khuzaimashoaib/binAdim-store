import 'package:binadim_store/utils/constants/colors.dart';
import 'package:binadim_store/utils/constants/image_strings.dart';
import 'package:binadim_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BASocialButtons extends StatelessWidget {
  const BASocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: BAColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              width: BASizes.iconMD,
              height: BASizes.iconMD,
              image: AssetImage(BAImages.google),
            ),
          ),
        ),
        SizedBox(width: BASizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: BAColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              width: BASizes.iconMD,
              height: BASizes.iconMD,
              image: AssetImage(BAImages.facebook),
            ),
          ),
        ),
      ],
    );
  }
}
