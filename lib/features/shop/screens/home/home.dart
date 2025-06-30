import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_shapes/containers/prim_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/products/product_cards/product_card_vertical.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_categories.dart';
import 'widgets/home_promo_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            BAPrimHeaderContainer(
              child: Column(
                children: [
                  // Appbar
                  const BAHomeAppBar(),
                  const SizedBox(height: BASizes.spaceBtwSections),

                  // Searchbar
                  const BASearchContainer(text: "Search in Store"),
                  const SizedBox(height: BASizes.spaceBtwSections),

                  // Categories
                  Padding(
                    padding: EdgeInsetsGeometry.only(
                      left: BASizes.defaultSpace,
                    ),
                    child: Column(
                      children: [
                        // Heading
                        BASectionHeading(
                          title: "Popular Categories",
                          showActionButton: false,
                          textColor: BAColors.white,
                        ),
                        const SizedBox(height: BASizes.spaceBtwItems),

                        // Category Scroll
                        BAHomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Body
            Padding(
              padding: const EdgeInsets.all(BASizes.defaultSpace),
              child: Column(
                children: [
                  BAPromoSlider(
                    banners: [
                      BAImages.onBoardingImage1,
                      BAImages.onBoardingImage2,
                      BAImages.onBoardingImage3,
                    ],
                  ),
                  const SizedBox(height: BASizes.spaceBtwSections),

                  BASectionHeading(title: "Popular Products", onPressed: () {}),
                  const SizedBox(height: BASizes.spaceBtwItems),

                  BAGridLayout(
                    itemCount: 2,
                    itemBuilder: (_, index) => const BAProductCardVertical(),
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
