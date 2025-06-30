import 'package:binadim_store/common/widgets/appbar/appbar.dart';
import 'package:binadim_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:binadim_store/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:binadim_store/common/widgets/texts/section_heading.dart';
import 'package:binadim_store/utils/constants/colors.dart';
import 'package:binadim_store/utils/constants/sizes.dart';
import 'package:binadim_store/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BAAppBar(
        title: Text("Store", style: Theme.of(context).textTheme.headlineMedium),
        actions: [BACartCounterIcon(onPressed: () {})],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, isBoxScrolled) {
          return [
            SliverAppBar(
              pinned: true,
              floating: true,
              backgroundColor: BAHelperFunction.isDarkMode(context)
                  ? BAColors.black
                  : BAColors.white,
              expandedHeight: 440,
              automaticallyImplyLeading: false,

              flexibleSpace: Padding(
                padding: EdgeInsetsGeometry.all(BASizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    // Search Bar
                    SizedBox(height: BASizes.spaceBtwItems),
                    BASearchContainer(
                      text: "Search in Store",
                      showBorder: true,
                      showBg: false,
                      padding: EdgeInsets.zero,
                    ),
                    SizedBox(height: BASizes.spaceBtwSections),
                    BASectionHeading(
                      title: "Featured Brands",
                      showActionButton: true,
                      onPressed: () {},
                    ),
                    SizedBox(height: BASizes.spaceBtwItems / 1.5),
                  ],
                ),
              ),
            ),
          ];
        },
        body: Container(),
      ),
    );
  }
}
