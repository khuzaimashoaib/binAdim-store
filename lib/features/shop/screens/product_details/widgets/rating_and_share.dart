import 'package:binadim_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BARatingAndShare extends StatelessWidget {
  const BARatingAndShare({
    super.key,
    // required this.dark,
  });

  // final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(Iconsax.star5, color: Colors.amber, size: 24),
            const SizedBox(width: BASizes.spaceBtwItems / 2),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "5.0",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),

                  const TextSpan(text: "(199)"),
                ],
              ),
            ),
          ],
        ),

        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.share,
            // color: dark ? BAColors.white : BAColors.dark,
            size: BASizes.iconMD,
          ),
        ),
      ],
    );
  }
}
