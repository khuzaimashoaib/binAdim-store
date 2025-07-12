import 'package:binadim_store/common/widgets/icons/circular_icon.dart';
import 'package:binadim_store/utils/constants/colors.dart';
import 'package:binadim_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/helpers/helper_function.dart';

class BAProductQtyAddRemoveBtn extends StatelessWidget {
  const BAProductQtyAddRemoveBtn({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BAHelperFunction.isDarkMode(context);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        BACircularIcon(
          icon: Iconsax.minus,
          height: 32,
          width: 32,
          size: BASizes.spacingMD,
          color: dark ? BAColors.white : BAColors.black,
          bgColor: dark ? BAColors.darkerGrey : BAColors.light,
        ),
        SizedBox(width: BASizes.spaceBtwItems),
        Text("1", style: Theme.of(context).textTheme.titleSmall),
        SizedBox(width: BASizes.spaceBtwItems),

        BACircularIcon(
          icon: Iconsax.add,
          height: 32,
          width: 32,
          size: BASizes.spacingMD,
          color: BAColors.white,
          bgColor: BAColors.primaryColor,
        ),
      ],
    );
  }
}
