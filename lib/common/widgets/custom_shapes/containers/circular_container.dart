import 'package:binadim_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class BACircularContainer extends StatelessWidget {
  const BACircularContainer({
    super.key,
    this.child,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.padding = 0,
    this.margin,
    this.bgColor = BAColors.white,
  });

  final double? width;
  final double? height;
  final double padding;
  final EdgeInsetsGeometry? margin;
  final double radius;
  final Widget? child;
  final Color? bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: bgColor,
      ),
      child: child,
    );
  }
}
