import 'package:ekart/common/wigets/custom_shapes/constainers/circular_container.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_edges/curve_edges_widget.dart';

class XPrimaryHeaderContainer extends StatelessWidget {
  const XPrimaryHeaderContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return XCurvedEdgeWidgets(
      child: Container(
        color: XColors.primary,
        padding: const EdgeInsets.only(bottom: 0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              /// --- Background Custom Shapes
              Positioned(
                top: -150,
                right: -250,
                child: XCircularContainer(
                  backgroundColor: XColors.textWhite.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: XCircularContainer(
                  backgroundColor: XColors.textWhite.withOpacity(0.1),
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
