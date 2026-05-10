import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_function.dart';

class XSearchContainer extends StatelessWidget {
  const XSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    final dark = XHelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: XSizes.defaultSpace),
      child: Container(
        width: XDeviceUtils.getScreenWidth(context),
        padding: EdgeInsets.all(XSizes.md),
        decoration: BoxDecoration(
          color: showBackground
              ? dark
                    ? XColors.dark
                    : XColors.white
              : Colors.transparent,
          borderRadius: BorderRadius.circular(XSizes.cardRadiusLg),
          border: showBorder ? Border.all(color: XColors.grey) : null,
        ),
        child: Row(
          children: [
            Icon(icon, color: XColors.darkGrey),
            const SizedBox(width: XSizes.spaceBtwItems),
            Text(text, style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}
