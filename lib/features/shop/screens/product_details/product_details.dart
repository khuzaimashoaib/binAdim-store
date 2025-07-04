import 'package:binadim_store/features/shop/screens/product_details/widgets/product_image_slider.dart';
import 'package:binadim_store/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:binadim_store/features/shop/screens/product_details/widgets/rating_and_share.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';
// import '../../../../utils/helpers/helper_function.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final dark = BAHelperFunction.isDarkMode(context);
    return Scaffold(
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
