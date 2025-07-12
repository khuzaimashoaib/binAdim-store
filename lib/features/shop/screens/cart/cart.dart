import 'package:binadim_store/common/widgets/appbar/appbar.dart';
import 'package:binadim_store/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:binadim_store/features/shop/screens/checkout/checkout.dart';
import 'package:binadim_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BAAppBar(
        showBackArrow: true,
        title: Text("Cart", style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: Padding(
        padding: const EdgeInsets.all(BASizes.defaultSpace),
        child: BACartItems(showAddRemoveButton: true),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(BASizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() => const CheckoutScreen()),
          child: Text("Checkout Rs. 1000"),
        ),
      ),
    );
  }
}
