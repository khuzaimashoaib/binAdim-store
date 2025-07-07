import 'package:binadim_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:binadim_store/common/widgets/products/rating/rating_star_indicator.dart';
import 'package:binadim_store/utils/constants/colors.dart';
import 'package:binadim_store/utils/constants/image_strings.dart';
import 'package:binadim_store/utils/constants/sizes.dart';
import 'package:binadim_store/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class ProductReviewsCard extends StatelessWidget {
  const ProductReviewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BAHelperFunction.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(backgroundImage: AssetImage(BAImages.user)),
                SizedBox(width: BASizes.spaceBtwItems),
                Text(
                  "Khuzaima Shoaib",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          ],
        ),
        SizedBox(height: BASizes.spaceBtwItems),

        // Reviews
        Row(
          children: [
            BARatingStarIndicator(rating: 4),
            SizedBox(width: BASizes.spaceBtwItems),
            Text("07 Dec, 2025", style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        SizedBox(height: BASizes.spaceBtwItems),
        ReadMoreText(
          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos, voluptatum. Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos, voluptatum. Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos, voluptatum. ",
          trimLines: 3,
          trimMode: TrimMode.Line,
          trimCollapsedText: ' Show more',
          trimExpandedText: ' Show less',
          moreStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w800,
            color: BAColors.primaryColor,
          ),
          lessStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w800,
            color: BAColors.primaryColor,
          ),
        ),
        SizedBox(height: BASizes.spaceBtwItems),

        // Company Review
        BACircularContainer(
          bgColor: dark ? BAColors.darkerGrey : BAColors.grey,
          padding: EdgeInsets.all(BASizes.spacingMD),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "binAdim's Store",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    "05 Dec, 2025",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              SizedBox(height: BASizes.spaceBtwItems),
              ReadMoreText(
                "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos, voluptatum. Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos, voluptatum. Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos, voluptatum. ",
                trimLines: 2,
                trimMode: TrimMode.Line,
                trimCollapsedText: ' Show more',
                trimExpandedText: ' Show less',
                moreStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                  color: BAColors.primaryColor,
                ),
                lessStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                  color: BAColors.primaryColor,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: BASizes.spaceBtwSections),
      ],
    );
  }
}
