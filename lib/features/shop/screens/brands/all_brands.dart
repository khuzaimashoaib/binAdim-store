import 'package:binadim_store/common/widgets/brands/brand_card.dart';
import 'package:binadim_store/common/widgets/layouts/grid_layout.dart';
import 'package:binadim_store/common/widgets/products/sortable/sortable_products.dart';
import 'package:binadim_store/common/widgets/texts/section_heading.dart';
import 'package:binadim_store/features/shop/screens/brands/brand_products.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../utils/constants/sizes.dart';

class BAAllBrands extends StatelessWidget {
  const BAAllBrands({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BAAppBar(
        showBackArrow: true,
        title: Text(
          "Brand",
          // style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(BASizes.defaultSpace),
          child: Column(
            children: [
              const BASectionHeading(title: "Brands", showActionButton: false),

              const SizedBox(height: BASizes.spaceBtwItems),

              BAGridLayout(
                mainAxisExtent: 80,
                itemCount: 8,
                itemBuilder: (_, index) => BABrandCard(
                  showBorder: true,
                  onTap: () => Get.to(() => const BABrandProducts()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
