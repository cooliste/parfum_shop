import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';


class PTermsAndConditionCheckbox extends StatelessWidget {
  const PTermsAndConditionCheckbox({
    super.key});


  @override
  Widget build(BuildContext context) {
    final dark = PHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(width: 24, height: 24, child: Checkbox(value: true, onChanged: (value){})),
        const SizedBox(height: PSizes.spaceBtwItems),
        Text.rich(
            TextSpan(
                children: [
                  TextSpan(text: PTexts.iAgreeTo, style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(text: PTexts.privacyPolicy, style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? PColors.white : PColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? PColors.white : PColors.primary,
                  )),
                  TextSpan(text: PTexts.and, style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(text: PTexts.termsOfUse, style: Theme.of(context).textTheme.bodySmall!.apply(
                    color: dark ? PColors.white : PColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? PColors.white : PColors.primary,
                  )),
                ]
            )
        )
      ],
    );
  }
}
