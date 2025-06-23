import 'package:binadim_store/common/widgets/custom_shapes/containers/b_a_circular_container.dart';
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
        padding: EdgeInsets.only(bottom: 0),
        color: BAColors.primaryColor,
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: BACircularContainer(
                  bgColor: BAColors.textWhite.withValues(alpha: 0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: BACircularContainer(
                  bgColor: BAColors.textWhite.withValues(alpha: 0.1),
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
