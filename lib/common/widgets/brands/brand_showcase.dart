import 'package:binadim_store/common/widgets/brands/brand_card.dart';
import 'package:binadim_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:binadim_store/utils/constants/colors.dart';
import 'package:binadim_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../utils/helpers/helper_function.dart';

class BABrandShowcase extends StatelessWidget {
  const BABrandShowcase({super.key, required this.images});

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return BACircularContainer(
      showBorder: true,
      borderColor: BAColors.darkGrey,
      bgColor: Colors.transparent,
      margin: EdgeInsets.only(bottom: BASizes.spaceBtwItems),
      padding: EdgeInsets.all(BASizes.spacingMD),
      child: Column(
        children: [
          // Brand With Product Count
          const BABrandCard(showBorder: false),
          const SizedBox(height: BASizes.spaceBtwItems),

          // Brand Top 3 Product Images
          Row(
            children: images
                .map((image) => brandTopProductImageWidget(image, context))
                .toList(),
          ),
        ],
      ),
    );
  }
}

Widget brandTopProductImageWidget(String image, context) {
  return Expanded(
    child: BACircularContainer(
      height: 100,
      margin: EdgeInsets.only(right: BASizes.spacingSM),
      padding: EdgeInsets.all(BASizes.spacingMD),
      bgColor: BAHelperFunction.isDarkMode(context)
          ? BAColors.darkerGrey
          : BAColors.white,
      child: Image(image: AssetImage(image)),
    ),
  );
}
