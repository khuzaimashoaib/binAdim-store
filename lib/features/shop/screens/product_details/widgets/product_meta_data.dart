import 'package:binadim_store/common/widgets/images/circular_image.dart';
import 'package:binadim_store/common/widgets/texts/brand_title_with_verified_icon.dart';
import 'package:binadim_store/common/widgets/texts/product_price_text.dart';
import 'package:binadim_store/common/widgets/texts/product_title_text.dart';
import 'package:binadim_store/utils/constants/enums.dart';
import 'package:binadim_store/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_function.dart';

class BAProductMetaData extends StatelessWidget {
  const BAProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BAHelperFunction.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Price & Sale Price
        Row(
          children: [
            // Sale Tag
            BACircularContainer(
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
            const SizedBox(width: BASizes.spaceBtwItems),
            // Price
            Text(
              "Rs. 2000",
              style: Theme.of(context).textTheme.titleSmall!.apply(
                decoration: TextDecoration.lineThrough,
              ),
            ),
            const SizedBox(width: BASizes.spaceBtwItems),
            // Sale Price
            BAProductPriceText(price: "1600", isLarge: true),
          ],
        ),
        const SizedBox(height: BASizes.spaceBtwItems / 1.5),

        // Title
        BAProductTitleText(title: "Product Name"),
        const SizedBox(height: BASizes.spaceBtwItems / 1.5),

        // Stock Status
        Row(
          children: [
            const BAProductTitleText(title: "Stock"),
            const SizedBox(width: BASizes.spaceBtwItems),
            Text("In Stock", style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: BASizes.spaceBtwItems / 1.5),

        // Brand
        Row(
          children: [
            BACircularImage(
              image: BAImages.facebook,
              width: 32,
              height: 32,
              overlayColor: dark ? BAColors.white : BAColors.black,
            ),
            BABrandTitleWithVerifiedIcon(
              title: "Brand Name",
              brandTextStyle: TextSizes.medium,
            ),
          ],
        ),
      ],
    );
  }
}
