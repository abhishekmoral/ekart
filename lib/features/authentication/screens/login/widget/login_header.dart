import 'package:ekart/utils/constants/image_strings.dart';
import 'package:ekart/utils/constants/sizes.dart';
import 'package:ekart/utils/constants/text_strings.dart';
import 'package:ekart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = XHelperFunctions.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          dark ? XImages.darkAppLogo : XImages.lightAppLogo,
          height: 150,
        ),
        Text(
          XTexts.xLoginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(height: XSizes.sm),
        Text(
          XTexts.xLoginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}