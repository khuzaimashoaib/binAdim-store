import 'package:binadim_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:binadim_store/utils/constants/colors.dart';
import 'package:binadim_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BACouponCode extends StatelessWidget {
  const BACouponCode({super.key, required this.dark});

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return BACircularContainer(
      showBorder: true,
      bgColor: dark ? BAColors.dark : BAColors.white,
      padding: EdgeInsets.only(
        left: BASizes.spacingMD,
        right: BASizes.spacingSM,
        bottom: BASizes.spacingSM,
        top: BASizes.spacingSM,
      ),
      child: Row(
        children: [
          // Coupon TextField
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Have a Coupon code, Enter here",
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),

          // button
          SizedBox(
            width: 80,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: dark
                    ? BAColors.white.withValues(alpha: 0.5)
                    : BAColors.dark.withValues(alpha: 0.5),
                backgroundColor: BAColors.grey.withValues(alpha: 0.2),
                side: BorderSide(color: BAColors.grey.withValues(alpha: 0.1)),
              ),
              child: const Text("Apply"),
            ),
          ),
        ],
      ),
    );
  }
}
