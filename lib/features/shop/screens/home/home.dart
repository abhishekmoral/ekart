import 'package:ekart/common/wigets/layouts/grid_layout.dart';
import 'package:ekart/common/wigets/products/product_cards/product_card_vertical.dart';
import 'package:ekart/features/shop/screens/home/widgets/home_categories.dart';
import 'package:ekart/features/shop/screens/home/widgets/pomo_slider.dart';
import 'package:ekart/utils/constants/image_strings.dart';

import 'package:flutter/material.dart';
import 'package:ekart/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:ekart/utils/constants/colors.dart';
import 'package:ekart/utils/constants/sizes.dart';
import '../../../../common/wigets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/wigets/custom_shapes/containers/search_container.dart';
import '../../../../common/wigets/texts/section_headind.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            XPrimaryHeaderContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// AppBar
                  const XHomeAppBar(),

                  const SizedBox(height: XSizes.spaceBtwSections),

                  /// Search Bar
                  const XSearchContainer(text: "Search in Store"),

                  const SizedBox(height: XSizes.spaceBtwSections),

                  /// Categories
                  Padding(
                    padding: const EdgeInsets.only(left: XSizes.defaultSpace),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// Heading
                        const XSectionHeading(
                          title: "Popular Categories",
                          showActionButton: false,
                          textColor: XColors.white,
                        ),

                        const SizedBox(height: XSizes.spaceBtwItems),

                        /// Categories List
                        const XHomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /// Body
            Padding(
              padding: const EdgeInsets.all(XSizes.defaultSpace),
              child: Column(
                children: [
                  /// promo slider
                  const XPromoSlider(
                    banners: [
                      XImages.promoBanner1,
                      XImages.promoBanner2,
                      XImages.promoBanner3,
                    ],
                  ),
                  SizedBox(height: XSizes.spaceBtwSections),

                  /// Heading
                  XSectionHeading(title: 'Popular Products', onPressed: () {}),
                  const SizedBox(height: XSizes.spaceBtwSections),

                  /// Popular Products
                  XGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const XProductCardVertical(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
