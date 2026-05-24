import 'package:ekart/utils/constants/colors.dart';
import 'package:ekart/utils/constants/image_strings.dart';
import 'package:ekart/utils/constants/sizes.dart';
import 'package:ekart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
    required this.isWeb,
  });


  final bool isWeb;

  /// Category Data
  static final List<Map<String, String>> categories = [
    {'icon': XImages.sportIcon, 'label': 'Sports'},
    {'icon': XImages.furnitureIcon, 'label': 'Furniture'},
    {'icon': XImages.electronicsIcon, 'label': 'Electronics'},
    {'icon': XImages.clothIcon, 'label': 'Clothes'},
    {'icon': XImages.animalIcon, 'label': 'Animals'},
    {'icon': XImages.shoeIcon, 'label': 'Shoes'},
    {'icon': XImages.cosmeticsIcon, 'label': 'Cosmetics'},
    {'icon': XImages.toyIcon, 'label': 'Toys'},
    {'icon': XImages.jeweleryIcon, 'label': 'Jewellery'},
  ];

  @override
  Widget build(BuildContext context) {
    final dark = XHelperFunctions.isDarkMode(context);

    /// Web layout — GridView
    if (isWeb) {
      return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 9,
          crossAxisSpacing: XSizes.spaceBtwItems,
          mainAxisSpacing: XSizes.spaceBtwItems,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return _CategoryItem(
            icon: categories[index]['icon']!,
            label: categories[index]['label']!,
            dark: dark,
          );
        },
      );
    }

    /// Mobile layout — Horizontal ListView
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: XSizes.spaceBtwItems),
            child: _CategoryItem(
              icon: categories[index]['icon']!,
              label: categories[index]['label']!,
              dark: dark,
            ),
          );
        },
      ),
    );
  }
}

class _CategoryItem extends StatelessWidget {
  const _CategoryItem({
    required this.icon,
    required this.label,
    required this.dark,
  });

  final String icon;
  final String label;
  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Icon
        Container(
          width: 56,
          height: 56,
          padding: const EdgeInsets.all(XSizes.sm),
          decoration: BoxDecoration(
            color: dark ? XColors.dark : XColors.white,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Image.asset(
            icon,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(height: XSizes.xs),

        /// Label
        Text(
          label,
          style: Theme.of(context).textTheme.labelSmall,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}