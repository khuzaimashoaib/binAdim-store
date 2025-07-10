import 'package:binadim_store/common/widgets/appbar/appbar.dart';
import 'package:binadim_store/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:binadim_store/utils/constants/colors.dart';
import 'package:binadim_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class BAHomeAppBar extends StatelessWidget {
  const BAHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BAAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            BATextStrings.homeAppbarTitle,
            style: Theme.of(
              context,
            ).textTheme.labelMedium!.apply(color: BAColors.grey),
          ),
          Text(
            BATextStrings.homeAppbarSubTitle,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.apply(color: BAColors.white),
          ),
        ],
      ),
      actions: [BACartCounterIcon(iconColor: BAColors.white)],
    );
  }
}
