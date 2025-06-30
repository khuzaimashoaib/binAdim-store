import 'package:binadim_store/common/widgets/texts/brand_title_text.dart';
import 'package:binadim_store/utils/constants/colors.dart';
import 'package:binadim_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/enums.dart';

class BABrandTitleWithVerifiedIcon extends StatelessWidget {
  const BABrandTitleWithVerifiedIcon({
    super.key,
    this.textColor,
    this.maxLines = 1,
    this.iconColor = BAColors.primaryColor,
    required this.title,
    this.textAlign = TextAlign.center,
    this.brandTextStyle = TextSizes.small,
  });

  final Color? textColor, iconColor;
  final int maxLines;
  final TextAlign? textAlign;
  final String title;
  final TextSizes brandTextStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BABrandTitleText(
          title: title,
          textAlign: textAlign,
          color: textColor,
          maxLines: maxLines,
          brandTextStyle: brandTextStyle,
        ),
        const SizedBox(width: BASizes.spacingXS),
        Icon(Iconsax.verify5, color: iconColor, size: BASizes.iconXS),
      ],
    );
  }
}
