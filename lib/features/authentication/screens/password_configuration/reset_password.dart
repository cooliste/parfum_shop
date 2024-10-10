import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parfum_shop/utils/constants/text_strings.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// close icon
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.back(), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(PSizes.defaultSpace),
          child: Column(
            children: [
              /// Image with 68% of screen width
              Image(image: const AssetImage(PImages.onBoardingImage2), width: PHelperFunctions.screenWidth() * 0.6),
              const SizedBox(height: PSizes.spaceBtwSections),

              /// Title & SubTitle
              Text(
                PTexts.changeYourPasswordTitle, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,
              ),
               const SizedBox(height: PSizes.spaceBtwItems),
             Text(
                PTexts.changeYourPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,
              ),
              const SizedBox(height: PSizes.spaceBtwSections),

              /// Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){}, child: const Text(PTexts.done)),
              ),
              const SizedBox(height: PSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){}, child: const Text(PTexts.resendEmail)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
