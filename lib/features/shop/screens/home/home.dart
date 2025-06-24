import 'package:binadim_store/common/widgets/custom_shapes/containers/prim_header_container.dart';
import 'package:binadim_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:binadim_store/common/widgets/texts/section_heading.dart';
import 'package:binadim_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:binadim_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                        ),
                        const SizedBox(height: BASizes.spaceBtwItems),

                        // Category Scroll
                      ],
                    ),
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
