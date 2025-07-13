import 'package:flutter/material.dart';

import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/sizes.dart';

class BABillingAddressSection extends StatelessWidget {
  const BABillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BASectionHeading(
          title: "Shipping Address",
          buttonTitle: "Change",
          onPressed: () {},
        ),
        Text("Binadim", style: Theme.of(context).textTheme.bodyLarge),
        SizedBox(height: BASizes.spaceBtwItems / 2),

        Row(
          children: [
            Icon(Icons.phone, size: 16, color: Colors.grey),
            SizedBox(width: BASizes.spaceBtwItems),
            Text(
              "+92 321-000000",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        SizedBox(height: BASizes.spaceBtwItems / 2),

        Row(
          children: [
            Icon(Icons.location_history, size: 16, color: Colors.grey),
            SizedBox(width: BASizes.spaceBtwItems),
            Expanded(
              child: Text(
                "Karachi, Pakistan",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
