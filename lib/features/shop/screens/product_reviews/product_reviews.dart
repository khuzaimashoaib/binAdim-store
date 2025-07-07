import 'package:binadim_store/common/widgets/appbar/appbar.dart';
import 'package:binadim_store/common/widgets/products/rating/rating_star_indicator.dart';
import 'package:binadim_store/features/shop/screens/product_reviews/widgets/product_overall_rating.dart';
import 'package:binadim_store/features/shop/screens/product_reviews/widgets/user_reviews_card.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BAAppBar(title: Text("Reviews & Ratings"), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.all(BASizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Ratings and reviews are verified by binAdim."),
              SizedBox(height: BASizes.spaceBtwItems),

              // Overall product Rating
              BAProductOverallRating(),
              BARatingStarIndicator(rating: 2.5),

              Text("10,000", style: Theme.of(context).textTheme.bodySmall),
              SizedBox(height: BASizes.spaceBtwSections),

              // User Reviews List
              const ProductReviewsCard(),
              const ProductReviewsCard(),
            ],
          ),
        ),
      ),
    );
  }
}
