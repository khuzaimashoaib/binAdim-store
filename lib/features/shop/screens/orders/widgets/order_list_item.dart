import 'package:binadim_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:binadim_store/utils/constants/sizes.dart';
import 'package:binadim_store/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';

class BAOrderListItems extends StatelessWidget {
  const BAOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BAHelperFunction.isDarkMode(context);
    return ListView.separated(
      itemCount: 5,
      separatorBuilder: (_, index) => SizedBox(height: BASizes.spaceBtwItems),
      itemBuilder: (_, index) => BACircularContainer(
        padding: EdgeInsets.all(BASizes.spacingMD),
        showBorder: true,
        bgColor: dark ? BAColors.dark : BAColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Row 1
            Row(
              children: [
                // icon
                Icon(Iconsax.ship),
                SizedBox(width: BASizes.spaceBtwItems / 2),

                // status & date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Pending",
                        style: Theme.of(context).textTheme.bodyLarge!.apply(
                          color: BAColors.primaryColor,
                          fontWeightDelta: 1,
                        ),
                      ),
                      Text(
                        "12 Dec 2025",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ),

                // Icon Button
                IconButton(
                  onPressed: () {},
                  icon: Icon(Iconsax.arrow_right_34, size: BASizes.iconSM),
                ),
              ],
            ),
            SizedBox(height: BASizes.spaceBtwItems),
            // Row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      // icon
                      Icon(Iconsax.tag),
                      SizedBox(width: BASizes.spaceBtwItems / 2),

                      // Order #
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Order",
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Text(
                              "[#123456]",
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      // icon
                      Icon(Iconsax.calendar),
                      SizedBox(width: BASizes.spaceBtwItems / 2),

                      // shipping date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Shipping Date",
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Text(
                              "20 Dec 2025",
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
