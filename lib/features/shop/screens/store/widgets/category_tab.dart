import 'package:binadim_store/common/widgets/brands/brand_showcase.dart';
import 'package:binadim_store/common/widgets/layouts/grid_layout.dart';
import 'package:binadim_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:binadim_store/common/widgets/texts/section_heading.dart';
import 'package:binadim_store/utils/constants/image_strings.dart';
import 'package:binadim_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BACategoryTab extends StatelessWidget {
  const BACategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(BASizes.defaultSpace),
          child: Column(
            children: [
              // Brands
              BABrandShowcase(
                images: [
                  BAImages.darkApplogo,
                  BAImages.facebook,
                  BAImages.google,
                ],
              ),
              BABrandShowcase(
                images: [
                  BAImages.darkApplogo,
                  BAImages.facebook,
                  BAImages.google,
                ],
              ),
              const SizedBox(height: BASizes.spaceBtwItems),

              // Products
              BASectionHeading(title: " You might like ", onPressed: () {}),
              const SizedBox(height: BASizes.spaceBtwItems),

              BAGridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => BAProductCardVertical(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
