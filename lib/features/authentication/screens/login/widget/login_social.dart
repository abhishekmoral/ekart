import 'package:ekart/utils/constants/sizes.dart';
import 'package:ekart/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import '../../../../../common/wigets/login_signup/form_divider.dart';
import '../../../../../common/wigets/login_signup/social_buttons.dart';

class LoginSocial extends StatelessWidget {
  const LoginSocial({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Divider
        XFormDivider(dividerTitle: XTexts.xOrSignInWith),
        SizedBox(height: XSizes.spaceBtwSections),

        /// Social Buttons
        XSocialButtons(),
      ],
    );
  }
}
