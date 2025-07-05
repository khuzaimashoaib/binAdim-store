import 'package:flutter/material.dart';

import '../../../../../common/widgets/chips/choice_chip.dart';
import '../../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../common/widgets/texts/product_title_text.dart';
import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_function.dart';

class BAProductAttributes extends StatelessWidget {
  const BAProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BAHelperFunction.isDarkMode(context);
    return Column(
      children: [
        // Selected Attribute Pricing & Title
        BACircularContainer(
          padding: EdgeInsets.all(BASizes.spacingMD),
          bgColor: dark ? BAColors.darkerGrey : BAColors.grey,
          child: Column(
            children: [
              // Title, Price & Stock Status
              Row(
                children: [
                  BASectionHeading(title: "Variation", showActionButton: false),
                  const SizedBox(width: BASizes.spaceBtwItems),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          // Actual Price
                          BAProductTitleText(title: "Price: ", smallSize: true),
                          Text(
                            "Rs. 2000",
                            style: Theme.of(context).textTheme.titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: BASizes.spaceBtwItems),
                          // Sale price
                          BAProductPriceText(price: "1600"),
                        ],
                      ),
                      // Stock
                      Row(
                        children: [
                          BAProductTitleText(title: "Stock: ", smallSize: true),
                          const SizedBox(width: BASizes.spaceBtwItems),
                          Text(
                            "In Stock",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              // Variation Description
              BAProductTitleText(
                title: "Product Description to Max Lines 4.",
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: BASizes.spaceBtwItems),

        // Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BASectionHeading(title: "Colors", showActionButton: false),
            const SizedBox(height: BASizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                BAChoiceChip(
                  text: "Green",
                  selected: false,
                  onSelected: (value) {},
                ),
                BAChoiceChip(
                  text: "Red",
                  selected: true,
                  onSelected: (value) {},
                ),
                BAChoiceChip(
                  text: "Blue",
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BASectionHeading(title: "Size", showActionButton: false),
            const SizedBox(height: BASizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                BAChoiceChip(
                  text: "EU 41",
                  selected: true,
                  onSelected: (value) {},
                ),
                BAChoiceChip(
                  text: "EU 41",
                  selected: false,
                  onSelected: (value) {},
                ),
                BAChoiceChip(
                  text: "EU 43",
                  selected: false,
                  onSelected: (value) {},
                ),
                BAChoiceChip(
                  text: "EU 45",
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
