import 'package:binadim_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:binadim_store/common/widgets/texts/section_heading.dart';
import 'package:binadim_store/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_function.dart';

class BABillingPaymentSection extends StatelessWidget {
  const BABillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BAHelperFunction.isDarkMode(context);

    return Column(
      children: [
        BASectionHeading(
          title: "Payment Method",
          buttonTitle: "Change",
          onPressed: () {},
        ),
        SizedBox(height: BASizes.spaceBtwItems / 2),
        Row(
          children: [
            BACircularContainer(
              width: 60,
              height: 35,
              padding: EdgeInsets.all(BASizes.spacingSM),
              bgColor: dark ? BAColors.light : BAColors.white,
              child: Image(image: AssetImage(BAImages.masterCard)),
            ),
            SizedBox(width: BASizes.spaceBtwItems / 2),
            Text("Master Card", style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),
      ],
    );
  }
}
