import 'package:binadim_store/common/widgets/appbar/appbar.dart';
import 'package:binadim_store/common/widgets/custom_shapes/curved_edges/b_a_curved_edge_widget.dart';
import 'package:binadim_store/common/widgets/icons/circular_icon.dart';
import 'package:binadim_store/common/widgets/images/rounded_image.dart';
import 'package:binadim_store/utils/constants/colors.dart';
import 'package:binadim_store/utils/constants/image_strings.dart';
import 'package:binadim_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/helpers/helper_function.dart';

class BAProductImageSlider extends StatelessWidget {
  const BAProductImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BAHelperFunction.isDarkMode(context);

    return BACurvedEdgeWidget(
      child: Container(
        color: dark ? BAColors.darkerGrey : BAColors.light,
        child: Stack(
          children: [
            // Main Image
            SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(BASizes.productImageRadius * 2),
                child: Center(
                  child: Image(image: AssetImage(BAImages.onBoardingImage1)),
                ),
              ),
            ),
            // Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: BASizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (_, __) =>
                      const SizedBox(width: BASizes.spaceBtwItems),
                  itemCount: 6,
                  itemBuilder: (_, index) => BARoundedImage(
                    width: 80,
                    bgColor: dark ? BAColors.dark : BAColors.white,
                    border: Border.all(color: BAColors.primaryColor),
                    padding: const EdgeInsets.all(BASizes.spacingSM),
                    imageUrl: BAImages.emailVerify,
                  ),
                ),
              ),
            ),

            // Appbar Icon
            BAAppBar(
              showBackArrow: true,
              actions: [
                BACircularIcon(icon: Iconsax.heart5, color: Colors.red),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
