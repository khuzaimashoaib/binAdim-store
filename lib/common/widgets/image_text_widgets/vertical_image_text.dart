import 'package:binadim_store/utils/constants/colors.dart';
import 'package:binadim_store/utils/constants/sizes.dart';
import 'package:binadim_store/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class BAVerticalImageText extends StatelessWidget {
  const BAVerticalImageText({
    super.key,
    required this.title,
    required this.image,
    this.bgColor,
    this.textColor = BAColors.white,
    this.onTap,
  });

  final String title, image;
  final Color textColor;
  final Color? bgColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = BAHelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: BASizes.spaceBtwItems),
        child: Column(
          children: [
            // Circular Icon
            Container(
              width: 56,
              height: 56,
              padding: EdgeInsets.all(BASizes.spacingSM),
              decoration: BoxDecoration(
                color: bgColor ?? (dark ? BAColors.black : BAColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: dark ? BAColors.light : BAColors.dark,
                ),
              ),
            ),
            const SizedBox(height: BASizes.spaceBtwItems / 2),
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(
                  context,
                ).textTheme.labelMedium!.apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
