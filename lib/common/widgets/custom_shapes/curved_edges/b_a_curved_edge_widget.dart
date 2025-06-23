import 'package:binadim_store/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:flutter/material.dart';

class BACurvedEdgeWidget extends StatelessWidget {
  const BACurvedEdgeWidget({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: BACurvedEdges(), child: child);
  }
}
