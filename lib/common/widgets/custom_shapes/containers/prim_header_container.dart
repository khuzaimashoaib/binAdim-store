import 'package:binadim_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:binadim_store/common/widgets/custom_shapes/curved_edges/b_a_curved_edge_widget.dart';
import 'package:binadim_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class BAPrimHeaderContainer extends StatelessWidget {
  const BAPrimHeaderContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BACurvedEdgeWidget(
      child: Container(
        color: BAColors.primaryColor,
        child: Stack(
          children: [
            Positioned(
              top: -60,
              right: -130,
              child: BACircularContainer(
                bgColor: BAColors.textWhite.withValues(alpha: 0.25),
                width: 250,
                height: 250,
                radius: 200,
              ),
            ),
            Positioned(
              top: 120,
              right: -170,
              child: BACircularContainer(
                bgColor: BAColors.textWhite.withValues(alpha: 0.15),
                width: 250,
                height: 250,
                radius: 200,
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
