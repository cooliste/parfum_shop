import 'package:flutter/material.dart';
import 'package:parfum_shop/utils/device/device_utility.dart';
import 'package:parfum_shop/utils/helpers/helper_functions.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../features/authentication/controllers.onboarding/onboarding_controller.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = PHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: PDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: PSizes.defaultSpace,
       child: SmoothPageIndicator(
         controller: controller.pageController,
         count: 3,
         onDotClicked: controller.dotNavigationClick,
        effect: ExpandingDotsEffect(
            activeDotColor: dark ? PColors.light : PColors.blue, dotHeight: 6),
      ),
    );
  }
}

