import 'package:flutter/material.dart';
import 'package:parfum_shop/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:parfum_shop/common/widgets/custom_shapes/containers/custom_curved.edges.dart';
import 'package:parfum_shop/utils/constants/colors.dart';



class PCurvedEdgeWidget extends StatelessWidget {
  const PCurvedEdgeWidget({
    super.key, required  this.child,
  });

final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper:  PCustomCurvedEdges(),
      child: Container(
        color: PColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child:Stack(
            children: [
              Positioned(top: -150, right: -250, child: PCircularContainer(backgroundColor: PColors.textWhite.withOpacity(0.1))), 
              Positioned(top: 100, right: -300, child: PCircularContainer(backgroundColor: PColors.textWhite.withOpacity(0.1))), 
              
            ],
          ),
        ),
      ),
    );
  }
}
