import 'package:binadim_store/common/widgets/texts/brand_title_with_verified_icon.dart';
import 'package:binadim_store/features/shop/screens/product_details/product_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/utils.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_function.dart';
import '../../../styles/shadows.dart';
import '../../custom_shapes/containers/circular_container.dart';
import '../../icons/circular_icon.dart';
import '../../images/rounded_image.dart';
import '../../texts/product_price_text.dart';
import '../../texts/product_title_text.dart';

class BAProductCardVertical extends StatelessWidget {
  const BAProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BAHelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetailScreen()),
      child: Container(
        width: 180,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [BAShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(BASizes.productImageRadius),
          color: dark ? BAColors.darkerGrey : BAColors.white,
        ),
        child: Column(
          children: [
            // Thumbnail, Wishlist, Dicount Tag
            BACircularContainer(
              height: 180,
              padding: EdgeInsets.all(BASizes.spacingSM),
              bgColor: dark ? BAColors.dark : BAColors.light,
              child: Stack(
                children: [
                  // Image
                  const BARoundedImage(imageUrl: BAImages.darkApplogo),

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
            const SizedBox(height: BASizes.spaceBtwItems / 2),
            //  Card Details
            Padding(
              padding: const EdgeInsets.only(left: BASizes.spacingSM),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BAProductTitleText(
                    title: "Product Name",
                    smallSize: true,
                  ),
                  const SizedBox(height: BASizes.spaceBtwItems / 2),
                  BABrandTitleWithVerifiedIcon(title: "Brand Name"),
                ],
              ),
            ),
            // Spacer(),
            Spacer(),
            // Price Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Price
                Padding(
                  padding: const EdgeInsets.only(left: BASizes.spacingSM),
                  child: const BAProductPriceText(price: "2000"),
                ),
                // Add to Cart
                Container(
                  decoration: const BoxDecoration(
                    color: BAColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(BASizes.cardRadiusMd),
                      bottomRight: Radius.circular(BASizes.productImageRadius),
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
    );
  }
}
