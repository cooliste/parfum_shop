import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parfum_shop/features/authentication/screens/signup/widgets/signup_form.dart';
import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';


class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  SingleChildScrollView(
        child: Padding(
        padding: const EdgeInsets.all(PSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              /// Title
                Text(PTexts.signUpTitle, style: Theme.of(context).textTheme.headlineMedium),
                const SizedBox(height: PSizes.spaceBtwSections),
              /// Form
                const PSignupForm(),
                  const SizedBox(height: PSizes.spaceBtwSections),
                /// Divider
                PFormDivider(dividerText: PTexts.orSignUpWith.capitalize!),

                  /// Social Buttons
                  const PSocialButton(),



                ],
    ),
        ),

    ),
    );
  }
}

