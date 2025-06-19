import 'package:flutter/material.dart';

import '../../utils/constants/sizes.dart';

class BASpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight =
      EdgeInsetsGeometry.only(
        top: BASizes.appBarHeight,
        bottom: BASizes.defaultSpace,
        left: BASizes.defaultSpace,
        right: BASizes.defaultSpace,
      );
}
