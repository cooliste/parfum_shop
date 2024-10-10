
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:parfum_shop/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:parfum_shop/features/authentication/screens/signup/widgets/verify_email.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class PSignupForm extends StatelessWidget {
   const PSignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
              expands: false,
              decoration: const InputDecoration(labelText: PTexts.firstName, prefixIcon: Icon(Iconsax.user)),
            ),

          const SizedBox(height: PSizes.spaceBtwInputFields),
          TextFormField(

            decoration: const InputDecoration(labelText: PTexts.lastName, prefixIcon: Icon(Iconsax.user)),

          ),


          const SizedBox(height: PSizes.spaceBtwInputFields),

          /// Username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: PTexts.username,
                prefixIcon: Icon(Iconsax.user_edit)
            ),
          ),
          const SizedBox(height: PSizes.spaceBtwInputFields),
          ///Email
          TextFormField(
            decoration: const InputDecoration(
              labelText: PTexts.email,
              prefixIcon: Icon(Iconsax.direct),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),

          const SizedBox(height: PSizes.spaceBtwInputFields),

          /// Password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: PTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
            ),
          ),

          const SizedBox(height: PSizes.spaceBtwInputFields),

          /// Terms&Conditions Checkbox
          const PTermsAndConditionCheckbox(),
          const SizedBox(height: PSizes.spaceBtwItems),

          /// Sign Up Button
          SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(() => const VerifyEmailScreen()),child: const Text(PTexts.createAccount))),
        ],
      ),

    );
  }
}
