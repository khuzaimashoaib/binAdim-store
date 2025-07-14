import 'package:binadim_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:binadim_store/common/widgets/products/cart/coupon_code_widget.dart';
import 'package:binadim_store/common/widgets/success_screen/success_screen.dart';
import 'package:binadim_store/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:binadim_store/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:binadim_store/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:binadim_store/navigation_menu.dart';
import 'package:binadim_store/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_function.dart';
import 'widgets/billing_amount_section.dart';

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
                padding: EdgeInsets.all(BASizes.spacingMD),
                bgColor: dark ? BAColors.black : BAColors.white,
                child: Column(
                  children: [
                    // Pricing
                    BABillingAmountSection(),
                    SizedBox(height: BASizes.spaceBtwItems),

                    // Divider
                    Divider(),
                    SizedBox(height: BASizes.spaceBtwItems),

                    // Payment Method
                    BABillingPaymentSection(),
                    SizedBox(height: BASizes.spaceBtwItems),

                    // Address
                    BABillingAddressSection(),
                    SizedBox(height: BASizes.spaceBtwItems),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(BASizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(
            () => SuccessScreen(
              image: BAImages.successPaymnentIcon,
              title: "Payment Success!",
              subtitle:
                  "Your order has been placed successfully. Your items will be delivered to you soon. Thank you for shopping with us. ",
              onPressed: () => Get.offAll(() => const NavigationMenu()),
            ),
          ),
          child: Text("Checkout Rs. 1000"),
        ),
      ),
    );
  }
}
