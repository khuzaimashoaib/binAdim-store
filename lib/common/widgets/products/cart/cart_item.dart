import 'package:binadim_store/common/widgets/images/rounded_image.dart';
import 'package:binadim_store/common/widgets/texts/brand_title_with_verified_icon.dart';
import 'package:binadim_store/common/widgets/texts/product_title_text.dart';
import 'package:binadim_store/utils/constants/colors.dart';
import 'package:binadim_store/utils/constants/image_strings.dart';
import 'package:binadim_store/utils/constants/sizes.dart';
import 'package:binadim_store/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class BACartItem extends StatelessWidget {
  const BACartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BARoundedImage(
          imageUrl: BAImages.darkApplogo,
          width: 60,
          height: 60,
          padding: EdgeInsets.all(BASizes.spacingSM),
          bgColor: BAHelperFunction.isDarkMode(context)
              ? BAColors.darkerGrey
              : BAColors.light,
        ),
        SizedBox(width: BASizes.spaceBtwItems),

        //  Title Price & Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BABrandTitleWithVerifiedIcon(title: "Nike"),
              Flexible(
                child: BAProductTitleText(
                  title: "Shoes jsjdhfa jdashdajjj khadk dshfk  ",
                  maxLines: 1,
                ),
              ),

              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Color ',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: 'Green ',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    TextSpan(
                      text: 'Size ',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: 'UK 08 ',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
