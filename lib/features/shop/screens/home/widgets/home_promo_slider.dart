import 'package:binadim_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:binadim_store/common/widgets/images/rounded_image.dart';
import 'package:binadim_store/features/shop/controllers/home_controller.dart';
import 'package:binadim_store/utils/constants/sizes.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/colors.dart';

class BAPromoSlider extends StatelessWidget {
  const BAPromoSlider({super.key, required this.banners});

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
          items: banners.map((url) => BARoundedImage(imageUrl: url)).toList(),
        ),
        SizedBox(height: BASizes.spaceBtwItems),
        Obx(
          () => Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  BACircularContainer(
                    width: 20,
                    height: 4,
                    margin: EdgeInsets.only(right: 10),
                    bgColor: controller.currentPageIndex.value == i
                        ? BAColors.primaryColor
                        : BAColors.grey,
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
