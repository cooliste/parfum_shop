import 'package:flutter/material.dart';
import 'package:parfum_shop/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:parfum_shop/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:parfum_shop/utils/constants/colors.dart';

class PPrimaryHeaderContainer extends StatelessWidget {
  const PPrimaryHeaderContainer({
    super.key, required this.child,
  });
 final Widget child;

  @override
  Widget build(BuildContext context) {
    return PCurvedEdgeWidget(
      child: Container(
        color: PColors.primary,
        padding: const EdgeInsets.only(bottom: 0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                  top: -150,
                  right: -250,
                  child: PCircularContainer(
                    backgroundColor: PColors.textWhite.withOpacity(0.1))),
              Positioned(
                  top: -100,
                  right: -300,
                  child: PCircularContainer(
                    backgroundColor:PColors.textWhite.withOpacity(0.1))),
            ],
          ),
        ),
      ),
    );
  }
}
