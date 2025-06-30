import 'package:binadim_store/utils/constants/enums.dart';
import 'package:flutter/material.dart';

class BABrandTitleText extends StatelessWidget {
  const BABrandTitleText({
    super.key,
    required this.title,
    this.color,
    this.maxLines = 1,
    this.textAlign = TextAlign.center,
    this.brandTextStyle = TextSizes.small,
  });

  final Color? color;
  final TextAlign? textAlign;
  final String title;
  final int maxLines;
  final TextSizes brandTextStyle;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: brandTextStyle == TextSizes.small
          ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
          : brandTextStyle == TextSizes.medium
          ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
          : brandTextStyle == TextSizes.large
          ? Theme.of(context).textTheme.titleLarge!.apply(color: color)
          : Theme.of(context).textTheme.bodyMedium!.apply(color: color),
    );
  }
}
