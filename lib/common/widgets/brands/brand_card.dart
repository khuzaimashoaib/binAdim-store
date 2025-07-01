import 'package:binadim_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:binadim_store/common/widgets/images/circular_image.dart';
import 'package:binadim_store/common/widgets/texts/brand_title_with_verified_icon.dart';
import 'package:binadim_store/utils/constants/colors.dart';
import 'package:binadim_store/utils/constants/enums.dart';
import 'package:binadim_store/utils/constants/image_strings.dart';
import 'package:binadim_store/utils/constants/sizes.dart';
import 'package:binadim_store/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class BABrandCard extends StatelessWidget {
  const BABrandCard({super.key, required this.showBorder, this.onTap});

  final bool showBorder;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: BACircularContainer(
        padding: const EdgeInsets.all(BASizes.spacingSM),
        showBorder: showBorder,
        bgColor: Colors.transparent,
        child: Row(
          children: [
            // Icon
            Flexible(
              child: BACircularImage(
                image: BAImages.darkApplogo,
                isNetworkImage: false,
                bgColor: Colors.transparent,
                overlayColor: BAHelperFunction.isDarkMode(context)
                    ? BAColors.white
                    : BAColors.black,
              ),
            ),
            SizedBox(width: BASizes.spaceBtwItems / 2),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BABrandTitleWithVerifiedIcon(
                    title: "Nike",
                    brandTextStyle: TextSizes.large,
                  ),
                  Text(
                    "100 Products",
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
