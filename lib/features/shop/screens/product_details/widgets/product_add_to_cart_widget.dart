import 'package:binadim_store/common/widgets/icons/circular_icon.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_function.dart';

class BABottomAddToCard extends StatelessWidget {
  const BABottomAddToCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BAHelperFunction.isDarkMode(context);

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: BASizes.defaultSpace,
        vertical: BASizes.defaultSpace / 2,
      ),
      decoration: BoxDecoration(
        color: dark ? BAColors.darkerGrey : BAColors.light,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(BASizes.borderRadiusLg),
          topRight: Radius.circular(BASizes.borderRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              BACircularIcon(
                icon: Iconsax.minus,
                color: BAColors.white,
                bgColor: BAColors.darkGrey,
                width: 40,
                height: 40,
              ),
              const SizedBox(width: BASizes.spaceBtwItems),
              Text("1", style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(width: BASizes.spaceBtwItems),
              BACircularIcon(
                icon: Iconsax.add,
                color: BAColors.white,
                bgColor: BAColors.black,
                width: 40,
                height: 40,
              ),
            ],
          ),

          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: BAColors.black,
              padding: EdgeInsets.all(BASizes.spacingMD),
              side: BorderSide(color: BAColors.black),
            ),
            child: const Text("Add to Cart"),
          ),
        ],
      ),
    );
  }
}
