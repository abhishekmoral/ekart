import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class SignupHeader extends StatelessWidget {
  const SignupHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Title
        Text(
          XTexts.xSignUpTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(height: XSizes.sm),

        // /// SubTitle
        // Text(
        //   XTexts.xSignUpSubTitle,
        //   style: Theme.of(context).textTheme.bodyMedium,
        // ),
      ],
    );
  }
}