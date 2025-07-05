import 'package:binadim_store/common/widgets/texts/section_heading.dart';
import 'package:binadim_store/features/shop/screens/product_details/widgets/product_add_to_cart_widget.dart';
import 'package:binadim_store/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

import '../../../../utils/constants/sizes.dart';
import 'widgets/product_image_slider.dart';
import 'widgets/product_meta_data.dart';
import 'widgets/rating_and_share.dart';
// import '../../../../utils/helpers/helper_function.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final dark = BAHelperFunction.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: BABottomAddToCard(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Product Image Slider
            BAProductImageSlider(),

            // Poduct Details
            Padding(
              padding: EdgeInsetsGeometry.only(
                right: BASizes.defaultSpace,
                left: BASizes.defaultSpace,
                bottom: BASizes.defaultSpace,
              ),
              child: Column(
                children: [
                  // Rating & Share Button
                  BARatingAndShare(),
                  // Price, Title, Stock, Brand
                  BAProductMetaData(),
                  // Attributes
                  BAProductAttributes(),
                  const SizedBox(height: BASizes.spaceBtwSections),
                  // Checkout Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Checkout"),
                    ),
                  ),
                  const SizedBox(height: BASizes.spaceBtwSections),

                  // Description
                  BASectionHeading(
                    title: "Description",
                    showActionButton: false,
                  ),
                  const SizedBox(height: BASizes.spaceBtwItems),
                  ReadMoreText(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    trimLines: 3,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Show more',
                    trimExpandedText: ' Show less',
                    moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                    lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  ),

                  // Reviews
                  const Divider(),
                  const SizedBox(height: BASizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BASectionHeading(
                        title: "Reviews(99)",
                        showActionButton: false,
                      ),
                      IconButton(
                        icon: const Icon(Iconsax.arrow_right_3, size: 18),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  const SizedBox(height: BASizes.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
