
import 'package:flutter/material.dart';
import 'package:parfum_shop/utils/constants/colors.dart';
import 'package:parfum_shop/utils/constants/sizes.dart';
import 'package:parfum_shop/utils/helpers/helper_functions.dart';

class PVerticalImageText extends StatelessWidget {
  const PVerticalImageText({
    super.key,
     required this.image, 
     required this.title,  
     this.textColor = PColors.white, 
     this.backgroundColor = PColors.white, 
     this.onTap,
  });

final String image, title;
final Color textColor;
final Color? backgroundColor;
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: PSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 16,
              height: 56,
              padding: const EdgeInsets.all(PSizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor ?? (PHelperFunctions.isDarkMode(context) ? PColors.black : PColors.white),
                borderRadius: BorderRadius.circular(100)
                ),
            child:  Center(
              child: Image(image: AssetImage(image), fit: BoxFit.cover, color: PHelperFunctions.isDarkMode(context) ? PColors.light : PColors.dark),
            ),
            ),
        const SizedBox(height: PSizes.spaceBtwItems / 2),
        SizedBox(
          child: Text(title, 
          style: Theme.of(context).textTheme.labelMedium!.apply(color: PColors.white),
          maxLines:1,
          overflow: TextOverflow.ellipsis,
          ),
          
        )
         ],
        ),
      ),
    );
  }
}
