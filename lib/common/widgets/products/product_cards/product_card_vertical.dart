import 'package:binadim_store/common/widgets/texts/brand_title_with_verified_icon.dart';
import 'package:binadim_store/features/shop/screens/product_details/product_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/utils.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_function.dart';
import '../../../styles/shadows.dart';
import '../../custom_shapes/containers/circular_container.dart';
import '../../icons/circular_icon.dart';
import '../../images/rounded_image.dart';
import '../../texts/product_price_text.dart';
import '../../texts/product_title_text.dart';

class BAProductCardVertical extends StatelessWidget {
  final String imageUrl;
  final String productName;
  final String brandName;
  final String price;
  final String? discount; // optional
  final bool isFavorite;

  const BAProductCardVertical({
    super.key,
    required this.imageUrl,
    required this.productName,
    required this.brandName,
    required this.price,
    this.discount,
    this.isFavorite = false,
  });

  @override
  Widget build(BuildContext context) {
    final dark = BAHelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetailScreen()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [BAShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(BASizes.productImageRadius),
          color: dark ? BAColors.darkerGrey : BAColors.white,
        ),
        child: Column(
          children: [
            // Thumbnail, Wishlist, Discount Tag
            BACircularContainer(
              height: 180,
              padding: const EdgeInsets.all(BASizes.spacingSM),
              bgColor: dark ? BAColors.dark : BAColors.light,
              child: Stack(
                children: [
                  // Product Image
                  BARoundedImage(
                    imageUrl: imageUrl.isNotEmpty
                        ? imageUrl
                        : "https://via.placeholder.com/150",
                  ),

                  // Discount Tag (agar ho)
                  if (discount != null && discount!.isNotEmpty)
                    Positioned(
                      top: 12,
                      child: BACircularContainer(
                        radius: BASizes.spacingSM,
                        bgColor: BAColors.secondaryColor.withValues(alpha: 0.8),
                        padding: const EdgeInsets.symmetric(
                          horizontal: BASizes.spacingSM,
                          vertical: BASizes.spacingXS,
                        ),
                        child: Text(
                          "$discount%",
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
                      icon: isFavorite ? Iconsax.heart5 : Iconsax.heart,
                      color: isFavorite ? Colors.red : BAColors.grey,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: BASizes.spaceBtwItems / 2),

            // Card Details
            Padding(
              padding: const EdgeInsets.only(left: BASizes.spacingSM),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BAProductTitleText(title: productName, smallSize: true),
                  const SizedBox(height: BASizes.spaceBtwItems / 2),
                  BABrandTitleWithVerifiedIcon(title: brandName),
                ],
              ),
            ),

            const Spacer(),

            // Price Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Price
                Padding(
                  padding: const EdgeInsets.only(left: BASizes.spacingSM),
                  child: BAProductPriceText(price: price),
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
