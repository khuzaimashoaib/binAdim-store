import 'package:binadim_store/utils/constants/colors.dart';
import 'package:binadim_store/utils/constants/sizes.dart';
import 'package:binadim_store/utils/device/device_utility.dart';
import 'package:binadim_store/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BASearchContainer extends StatelessWidget {
  const BASearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBg = true,
    this.showBorder = true,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: BASizes.spacingMD),
  });

  final String text;
  final IconData? icon;
  final bool showBg, showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = BAHelperFunction.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: BADeviceUtility.getScreenWidth(context),
          padding: EdgeInsets.all(BASizes.spacingMD),
          decoration: BoxDecoration(
            color: showBg
                ? dark
                      ? BAColors.dark
                      : BAColors.light
                : Colors.transparent,
            border: showBorder ? Border.all(color: BAColors.grey) : null,
            borderRadius: BorderRadius.circular(BASizes.cardRadiusLg),
          ),
          child: Row(
            children: [
              Icon(icon, color: dark ? BAColors.darkerGrey : Colors.grey),
              const SizedBox(width: BASizes.spaceBtwItems),
              Text(text, style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
        ),
      ),
    );
  }
}
