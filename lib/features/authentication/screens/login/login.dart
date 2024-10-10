import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parfum_shop/common/styles/spacing_styles.dart';
import 'package:parfum_shop/features/authentication/screens/login/widgets/login_form.dart';
import 'package:parfum_shop/features/authentication/screens/login/widgets/login_header.dart';
import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class LoginScreen  extends StatelessWidget {
  const LoginScreen({super.key});


    @override
  Widget build(BuildContext context) {
    return    Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: PSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, title & Sub-Title
              const PLoginHeader(),

              /// Form
              const PLoginForm(),

              /// Divider
              PFormDivider(dividerText: PTexts.orSignInWith.capitalize!),
              const SizedBox(width: PSizes.spaceBtwSections),
              /// Footer
              const PSocialButton(),
            ],
          ),
),
    ),
    );
  }
}





