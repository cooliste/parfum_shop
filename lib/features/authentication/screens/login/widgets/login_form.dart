import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../navigation_menu.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../password_configuration/forget_password.dart';
import '../../signup/signup.dart';
import '../../signup/widgets/verify_email.dart';


class PLoginForm extends StatelessWidget {
  const PLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: PSizes.spaceBtwSections),
        child: Column(
          children: [
            /// Email
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: PTexts.email ),
            ),
            const SizedBox(height: PSizes.spaceBtwInputFields),

            /// Password
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: PTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: PSizes.spaceBtwInputFields/2),

            /// Remember Me & Forgot Password

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Remember Me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value){}),
                    const Text (PTexts.rememberMe)
                  ],
                ),

                /// Forget Password
                TextButton(onPressed: () => Get.to(() => const ForgetPassword()), child: const Text(PTexts.forgetPassword)),
              ],
            ),
            const SizedBox(height: PSizes.spaceBtwSections),

            /// Sign In Button
            SizedBox(width: double.infinity, child:ElevatedButton(onPressed: () => Get.to(() =>const NavigationMenu()), child: const Text(PTexts.signIn))),

            const SizedBox(height: PSizes.spaceBtwItems),
            /// Create Account button
            SizedBox(width: double.infinity, child:ElevatedButton(onPressed: () => Get.to(() => const SignupScreen()), child: const Text(PTexts.createAccount))),

          ],
        ),
      ),
    );
  }
}