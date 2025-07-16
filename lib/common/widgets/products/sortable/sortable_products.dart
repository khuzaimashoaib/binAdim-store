import 'package:binadim_store/common/widgets/layouts/grid_layout.dart';
import 'package:binadim_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:binadim_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BASortableProducts extends StatelessWidget {
  const BASortableProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Dropdown
        DropdownButtonFormField(
          decoration: InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          items: [
            "Name",
            "High to Low",
            "Low to High",
            "Newest",
            "Sale",
            "Top Rated",
          ].map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
          onChanged: (value) {},
        ),
        const SizedBox(height: BASizes.spaceBtwSections),
        // Products
        BAGridLayout(
          itemCount: 8,
          itemBuilder: (_, index) => BAProductCardVertical(),
        ),
      ],
    );
  }
}
