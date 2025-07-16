import 'package:binadim_store/common/widgets/appbar/appbar.dart';
import 'package:binadim_store/common/widgets/appbar/tabbar.dart';
import 'package:binadim_store/common/widgets/brands/brand_card.dart';
import 'package:binadim_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:binadim_store/common/widgets/layouts/grid_layout.dart';
import 'package:binadim_store/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:binadim_store/common/widgets/texts/section_heading.dart';
import 'package:binadim_store/features/shop/screens/brands/all_brands.dart';
import 'package:binadim_store/features/shop/screens/store/widgets/category_tab.dart';
import 'package:binadim_store/utils/constants/colors.dart';
import 'package:binadim_store/utils/constants/sizes.dart';
import 'package:binadim_store/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: BAAppBar(
          title: Text(
            "Store",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [BACartCounterIcon()],
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

                      // Featured Brands
                      BASectionHeading(
                        title: "Featured Brands",
                        showActionButton: true,
                        onPressed: () => Get.to(() => const BAAllBrands()),
                      ),
                      SizedBox(height: BASizes.spaceBtwItems / 1.5),
                      BAGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return BABrandCard(showBorder: false);
                        },
                      ),
                    ],
                  ),
                ),

                // Sliver Tab Bar
                bottom: const BATabBar(
                  tabs: [
                    Tab(child: Text("Panasonic")),
                    Tab(child: Text("Panasonic")),
                    Tab(child: Text("Panasonic")),
                    Tab(child: Text("Panasonic")),
                    Tab(child: Text("Panasonic")),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              BACategoryTab(),
              BACategoryTab(),
              BACategoryTab(),
              BACategoryTab(),
              BACategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
