
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/wigets/login_signup/form_divider.dart';
import '../../../../../common/wigets/login_signup/social_buttons.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class SignupSocial extends StatelessWidget {
  const SignupSocial({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Divider
        XFormDivider(dividerTitle: XTexts.xOrSignUpWith.capitalize!),
        SizedBox(height: XSizes.spaceBtwSections),

        /// Social Buttons
        const XSocialButtons(),
      ],
    );
  }
}