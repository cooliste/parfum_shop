import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:parfum_shop/utils/constants/colors.dart';

class PCartCounterIcon extends StatelessWidget {
  const PCartCounterIcon({
    super.key, required this.iconColor, required this.onPressed, 
  });

  final Color iconColor;
  final VoidCallback onPressed;
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(onPressed: (){}, icon: const Icon(Iconsax.shopping_bag, color: PColors.white)),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: PColors.black,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text('2', style: Theme.of(context).textTheme.labelLarge!.apply(color: PColors.white)),
            ),
          ),
        ),
      ],
    );
  }
}
