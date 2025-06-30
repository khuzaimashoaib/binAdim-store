import 'package:binadim_store/utils/constants/colors.dart';
import 'package:binadim_store/utils/constants/sizes.dart';
import 'package:binadim_store/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class BACircularImage extends StatelessWidget {
  const BACircularImage({
    super.key,
    this.overlayColor,
    this.bgColor,
    required this.image,
    this.height = 56,
    this.width = 56,
    this.padding = BASizes.spacingSM,
    this.isNetworkImage = false,
    this.fit = BoxFit.cover,
  });

  final double height, width, padding;
  final String image;
  final bool isNetworkImage;
  final BoxFit? fit;
  final Color? overlayColor;
  final Color? bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color:
            bgColor ??
            (BAHelperFunction.isDarkMode(context)
                ? BAColors.black
                : BAColors.white),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
        fit: fit,
        image: isNetworkImage
            ? NetworkImage(image)
            : AssetImage(image) as ImageProvider,
        color: overlayColor,
      ),
    );
  }
}
