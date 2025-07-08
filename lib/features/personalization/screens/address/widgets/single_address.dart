import 'package:binadim_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_function.dart';

class BASingleAddress extends StatelessWidget {
  const BASingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = BAHelperFunction.isDarkMode(context);
    return BACircularContainer(
      width: double.infinity,
      padding: EdgeInsets.all(BASizes.spacingMD),
      showBorder: true,
      bgColor: selectedAddress
          ? BAColors.primaryColor.withValues(alpha: 0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
          ? BAColors.darkerGrey
          : BAColors.grey,

      margin: EdgeInsets.only(bottom: BASizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress
                  ? dark
                        ? BAColors.light
                        : BAColors.dark.withValues(alpha: 0.7)
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Khuzaima Shoaib",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: BASizes.spacingSM / 2),
              Text(
                "+92 300 0000000",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: BASizes.spacingSM / 2),
              Text(
                "R-730, Block 17, Dhaka, Bangladesh , 123456, Pakistan",
                softWrap: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
