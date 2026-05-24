import 'package:ekart/utils/constants/colors.dart';
import 'package:ekart/utils/constants/sizes.dart';
import 'package:ekart/utils/constants/text_strings.dart';
import 'package:ekart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = XHelperFunctions.isDarkMode(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: XSizes.md),
      decoration: BoxDecoration(
        color: dark ? XColors.dark : XColors.white,
        borderRadius: BorderRadius.circular(XSizes.cardRadiusLg),
      ),
      child: TextField(
        textAlignVertical: TextAlignVertical.center, // ← fix
        decoration: InputDecoration(
          hintText: XTexts.xDashboardSearch,
          hintStyle: Theme.of(context).textTheme.bodySmall,
          prefixIcon: const Icon(Iconsax.search_normal),
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          contentPadding: EdgeInsets.zero, // ← fix
        ),
      ),
    );
  }
}