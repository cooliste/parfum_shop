import 'package:flutter/material.dart';
import 'package:parfum_shop/utils/constants/sizes.dart';
import 'package:parfum_shop/utils/device/device_utility.dart';

class PAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PAppBar({super.key, this.title,  this.leadingIcon, this.actions, this.leadingOnPressed});

final Widget? title;
//final bool showBackArrow;
final IconData? leadingIcon;
final List<Widget>? actions;
final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
  return Padding(
  padding:const  EdgeInsets.symmetric(horizontal: PSizes.md),
  child: AppBar(
    automaticallyImplyLeading: false,
   // leading: showBackArrow 
   // ? IconButton(onPressed: () => Get.back(), icon: const Icon(Iconsax.arrow_left)) 
    //: leadingIcon != null ? IconButton(onPressed: leadingOnPressed, icon:  Icon(leadingIcon)) : null,
  title: title,
   actions: actions,
  ),
  );
  }

    
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(PDeviceUtils.getAppBarHeight());
}