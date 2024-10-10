import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:parfum_shop/utils/constants/colors.dart';
import 'package:parfum_shop/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = PHelperFunctions.isDarkMode(context);

    return  Scaffold(
      bottomNavigationBar: Obx(
          () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          backgroundColor: darkMode ? PColors.black : Colors.white,
          indicatorColor: darkMode ? PColors.white.withOpacity(0.1) : PColors.black.withOpacity(0.1),
          destinations: const[
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Favoris'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profil'),
           ],
        ),
      ),
      body: Obx (() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [Container(color: Colors.green), Container(color: Colors.purple), Container(color: Colors.deepPurple), Container(color: Colors.orange)];
}
