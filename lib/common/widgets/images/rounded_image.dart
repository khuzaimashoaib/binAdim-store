import 'package:binadim_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BARoundedImage extends StatelessWidget {
  const BARoundedImage({
    super.key,
    this.onTap,
    this.border,
    this.padding,
    this.width,
    this.height,
    this.fit = BoxFit.contain,
    this.bgColor,
    this.applyImageRadius = true,
    this.isNetworkImage = false,
    this.borderRadius = BASizes.spacingMD,
    required this.imageUrl,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color? bgColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onTap;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: bgColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadiusGeometry.circular(borderRadius)
              : BorderRadius.zero,
          child: Image(
            fit: fit,
            image: isNetworkImage
                ? NetworkImage(imageUrl)
                : AssetImage(imageUrl) as ImageProvider,
          ),
        ),
      ),
    );
  }
}
