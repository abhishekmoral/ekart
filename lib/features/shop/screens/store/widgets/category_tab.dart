import 'package:flutter/material.dart';
import '../../../../../../utils/constants/image_strings.dart';
import '../../../../../../utils/constants/sizes.dart';
import '../../../../../common/wigets/brands/brand_show_case.dart';
import '../../../../../common/wigets/layouts/grid_layout.dart';
import '../../../../../common/wigets/products/product_cards/product_card_vertical.dart';
import '../../../../../common/wigets/texts/section_headind.dart';

class XCategoryTab extends StatelessWidget {
  const XCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(XSizes.defaultSpace),
          child: Column(
            children: [
              /// -- Brands
              XBrandShowcase(
                images: [
                  XImages.sportIcon,
                  XImages.sportIcon,
                  XImages.sportIcon,
                ],
              ),
              XBrandShowcase(
                images: [
                  XImages.sportIcon,
                  XImages.sportIcon,
                  XImages.sportIcon,
                ],
              ),
              const SizedBox(height: XSizes.spaceBtwItems),

              /// -- Products
              XSectionHeading(title: 'You might like', onPressed: () {}),
              const SizedBox(height: XSizes.spaceBtwItems),

              XGridLayout(
                itemCount: 6,
                itemBuilder: (_, index) => const XProductCardVertical(),
              ),
              const SizedBox(height: XSizes.spaceBtwSections),
            ],
          ), // Column
        ), // Padding
      ],
    ); // ListView
  }
}
