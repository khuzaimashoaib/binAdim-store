import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';

class BABillingAmountSection extends StatelessWidget {
  const BABillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // SubTotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Subtotal", style: Theme.of(context).textTheme.bodyMedium),
            Text("Rs. 1000", style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        SizedBox(height: BASizes.spaceBtwItems / 2),
        // Shipping Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Shipping Fee", style: Theme.of(context).textTheme.bodyMedium),
            Text("Rs. 200", style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        SizedBox(height: BASizes.spaceBtwItems / 2),

        // Tax Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Tax Fee", style: Theme.of(context).textTheme.bodyMedium),
            Text("Rs. 200", style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        SizedBox(height: BASizes.spaceBtwItems / 2),

        // Order Total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Order Total", style: Theme.of(context).textTheme.bodyMedium),
            Text("Rs. 200", style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
      ],
    );
  }
}
