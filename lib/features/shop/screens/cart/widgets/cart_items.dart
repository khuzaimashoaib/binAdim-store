import 'package:binadim_store/common/widgets/products/cart/cart_item.dart';
import 'package:binadim_store/common/widgets/products/cart/product_qty_add_remove_btn.dart';
import 'package:binadim_store/common/widgets/texts/product_price_text.dart';
import 'package:binadim_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BACartItems extends StatelessWidget {
  const BACartItems({super.key, this.showAddRemoveButton = true});

  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 2,
      separatorBuilder: (_, __) => SizedBox(height: BASizes.spaceBtwSections),
      itemBuilder: (context, index) => Column(
        children: [
          BACartItem(),
          if (showAddRemoveButton) SizedBox(height: BASizes.spaceBtwItems),

          if (showAddRemoveButton)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    // Extra Space
                    SizedBox(width: 70),
                    // Add remove button
                    BAProductQtyAddRemoveBtn(),
                  ],
                ),

                // Product total price
                BAProductPriceText(price: "1000"),
              ],
            ),
        ],
      ),
    );
  }
}
