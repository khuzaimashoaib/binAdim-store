import 'package:binadim_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:binadim_store/common/widgets/texts/brand_title_with_verified_icon.dart';
import 'package:binadim_store/common/widgets/texts/product_price_text.dart';
import 'package:binadim_store/common/widgets/texts/product_title_text.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_function.dart';
import '../../icons/circular_icon.dart';
import '../../images/rounded_image.dart';

class BAProductCardHorizontal extends StatelessWidget {
  const BAProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BAHelperFunction.isDarkMode(context);
    return Container(
      width: 310,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(BASizes.productImageRadius),
        color: dark ? BAColors.darkerGrey : BAColors.softGrey,
      ),
      child: Row(
        children: [
          // Thumbnail
          BACircularContainer(
            height: 120,
            padding: EdgeInsets.all(BASizes.spacingSM),
            bgColor: dark ? BAColors.dark : BAColors.white,
            child: Stack(
              children: [
                // Thumbnail Image
                SizedBox(
                  height: 120,
                  width: 120,
                  child: BARoundedImage(
                    imageUrl: BAImages.lightApplogo,
                    applyImageRadius: true,
                  ),
                ),
                // Sale Tag
                Positioned(
                  top: 12,
                  child: BACircularContainer(
                    radius: BASizes.spacingSM,
                    bgColor: BAColors.secondaryColor.withValues(alpha: 0.8),
                    padding: EdgeInsets.symmetric(
                      horizontal: BASizes.spacingSM,
                      vertical: BASizes.spacingXS,
                    ),
                    child: Text(
                      "20%",
                      style: Theme.of(
                        context,
                      ).textTheme.labelLarge!.apply(color: BAColors.white),
                    ),
                  ),
                ),

                // Favorite Icon Button
                Positioned(
                  top: 0,
                  right: 0,
                  child: BACircularIcon(
                    icon: Iconsax.heart5,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),

          // Details
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(
                top: BASizes.spacingSM,
                left: BASizes.spacingSM,
              ),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BAProductTitleText(
                        title: "Product Title",
                        smallSize: true,
                      ),
                      SizedBox(height: BASizes.spaceBtwItems / 2),
                      BABrandTitleWithVerifiedIcon(title: "Brand Title"),
                    ],
                  ),
                  Spacer(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(child: BAProductPriceText(price: "2000")),
                      Container(
                        decoration: const BoxDecoration(
                          color: BAColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(BASizes.cardRadiusMd),
                            bottomRight: Radius.circular(
                              BASizes.productImageRadius,
                            ),
                          ),
                        ),
                        child: const SizedBox(
                          height: BASizes.iconLG * 1.2,
                          width: BASizes.iconLG * 1.2,
                          child: Icon(Iconsax.add, color: BAColors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
