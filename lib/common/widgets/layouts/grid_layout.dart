import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';

class BAGridLayout extends StatelessWidget {
  const BAGridLayout({
    super.key,
    this.mainAxisExtent = 288,
    required this.itemCount,
    required this.itemBuilder,
  });

  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext context, int index) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: BASizes.gridViewSpacing,
        crossAxisSpacing: BASizes.gridViewSpacing,
        mainAxisExtent: mainAxisExtent,
      ),
      itemBuilder: itemBuilder,
    );
  }
}
