
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';

class XSocialButtons extends StatelessWidget {
  const XSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        /// Google
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.all(XSizes.md),
            decoration: BoxDecoration(
              border: Border.all(color: XColors.grey),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Image.asset(
              XImages.xGoogleIcons,
              height: XSizes.iconMd,
              width: XSizes.iconMd,
            ),
          ),
        ),
        SizedBox(width: XSizes.spaceBtwItems),

        /// Facebook
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.all(XSizes.md),
            decoration: BoxDecoration(
              border: Border.all(color: XColors.grey),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Image.asset(
              XImages.xGoogleIcons,
              height: XSizes.iconMd,
              width: XSizes.iconMd,
            ),
          ),
        ),
      ],
    );
  }
}