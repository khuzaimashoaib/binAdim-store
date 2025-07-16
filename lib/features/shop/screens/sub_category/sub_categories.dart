import 'package:binadim_store/common/widgets/images/rounded_image.dart';
import 'package:binadim_store/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:binadim_store/common/widgets/texts/section_heading.dart';
import 'package:binadim_store/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../utils/constants/sizes.dart';

class BASubCategoriesScreen extends StatelessWidget {
  const BASubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BAAppBar(
        showBackArrow: true,
        title: Text(
          "Sports",
          // style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(BASizes.defaultSpace),
          child: Column(
            children: [
              // Banner
              BARoundedImage(
                imageUrl: BAImages.lightApplogo,
                width: double.infinity,
                applyImageRadius: true,
              ),
              SizedBox(height: BASizes.spaceBtwSections),

              // Sub Categories
              Column(
                children: [
                  BASectionHeading(
                    title: "Sports Shoes",
                    showActionButton: true,
                  ),
                  SizedBox(height: BASizes.spaceBtwItems / 2),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (_, index) =>
                          const SizedBox(width: BASizes.spaceBtwItems / 2),

                      itemBuilder: (_, index) =>
                          const BAProductCardHorizontal(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
