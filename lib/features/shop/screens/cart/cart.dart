import 'package:binadim_store/common/widgets/appbar/appbar.dart';
import 'package:binadim_store/common/widgets/products/cart/cart_item.dart';
import 'package:binadim_store/common/widgets/products/cart/product_qty_add_remove_btn.dart';
import 'package:binadim_store/common/widgets/texts/product_price_text.dart';
import 'package:binadim_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../utils/helpers/helper_function.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BAHelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: BAAppBar(
        showBackArrow: true,
        title: Text("Cart", style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: Padding(
        padding: const EdgeInsets.all(BASizes.defaultSpace),
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: 10,
          separatorBuilder: (_, __) =>
              SizedBox(height: BASizes.spaceBtwSections),
          itemBuilder: (context, index) => Column(
            children: [
              BACartItem(),
              SizedBox(height: BASizes.spaceBtwItems),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      // Extra Space
                      SizedBox(width: 70),
                      // Add remove button
                      BAProductQtyAddRemoveBtn(dark: dark),
                    ],
                  ),

                  // Product total price
                  BAProductPriceText(price: "1000"),
                ],
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(BASizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () {},
          child: Text("Checkout Rs. 1000"),
        ),
      ),
    );
  }
}
