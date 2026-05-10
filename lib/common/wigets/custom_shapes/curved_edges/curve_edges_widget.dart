import 'package:ekart/common/wigets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:flutter/material.dart';

class XCurvedEdgeWidgets extends StatelessWidget {
  const XCurvedEdgeWidgets({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: XCustomCurvedEdges(), child: child);
  }
}
