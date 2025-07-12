import 'package:binadim_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:binadim_store/common/widgets/products/cart/coupon_code_widget.dart';
import 'package:binadim_store/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_function.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BAHelperFunction.isDarkMode(context);

    return Scaffold(
      appBar: BAAppBar(
        showBackArrow: true,
        title: Text(
          "Order Review",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.all(BASizes.defaultSpace),
          child: Column(
            children: [
              // items in cart
              BACartItems(showAddRemoveButton: false),
              SizedBox(height: BASizes.spaceBtwSections),

              // Coupon Textfield & button
              BACouponCode(dark: dark),
              SizedBox(height: BASizes.spaceBtwSections),

              // Billing Section
              BACircularContainer(
                showBorder: true,
                bgColor: dark ? BAColors.black : BAColors.white,
                child: Column(
                  children: [
                    // Pricing
                    SizedBox(height: BASizes.spaceBtwItems),

                    // Divider
                    Divider(),
                    SizedBox(height: BASizes.spaceBtwItems),

                    // Payment Method

                    // Address
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
