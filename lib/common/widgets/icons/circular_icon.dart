import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_function.dart';

class BACircularIcon extends StatelessWidget {
  const BACircularIcon({
    super.key,
    this.width,
    this.height,
    this.size,
    required this.icon,
    this.color,
    this.bgColor,
    this.onTap,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? bgColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,

      decoration: BoxDecoration(
        color: bgColor != null
            ? bgColor!
            : BAHelperFunction.isDarkMode(context)
            ? BAColors.black.withValues(alpha: 0.9)
            : BAColors.white.withValues(alpha: 0.9),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
        icon: Icon(icon, color: color, size: size),
        onPressed: onTap,
      ),
    );
  }
}
