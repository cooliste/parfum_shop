import 'package:flutter/material.dart';
import 'package:parfum_shop/common/widgets/appbar/appbar.dart';
import 'package:parfum_shop/utils/constants/colors.dart';
import 'package:parfum_shop/utils/constants/text_strings.dart';
import '../../../../../common/widgets/products.cart/cart_menu_icon.dart';

class PHomeAppBar extends StatelessWidget {
  const PHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return PAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(PTexts.homeAppBarTitle, style: Theme.of(context).textTheme .labelMedium!.apply(color: PColors.grey)),
          Text(PTexts.homeAppBarSubTitle, style: Theme.of(context).textTheme .headlineSmall!.apply(color: PColors.white)),
        ],
      ),
      actions: [PCartCounterIcon( onPressed: (){}, iconColor: PColors.white)],
      
    );
  }
}
