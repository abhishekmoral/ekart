import 'package:ekart/features/shop/screens/home/widgets/home_categories.dart';
import 'package:ekart/utils/constants/text_strings.dart';
import 'package:ekart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:ekart/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:ekart/utils/constants/colors.dart';
import 'package:ekart/utils/constants/sizes.dart';

import '../../../../common/wigets/Image_text_widgets/vertical_image_texts.dart';
import '../../../../common/wigets/custom_shapes/constainers/primary_header_container.dart';
import '../../../../common/wigets/custom_shapes/constainers/search_container.dart';
import '../../../../common/wigets/texts/section_headind.dart';
import '../../../../utils/constants/image_strings.dart';

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
                  const XSearchContainer(
                    text: "Search in Store",
                  ),

                  const SizedBox(height: XSizes.spaceBtwSections),

                  /// Categories
                  Padding(
                    padding: const EdgeInsets.only(
                      left: XSizes.defaultSpace,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// Heading
                        const XSectionHeading(
                          title: "Popular Categories",
                          showActionButton: false,
                          textColor: XColors.white,
                        ),

                        const SizedBox(
                          height: XSizes.spaceBtwItems,
                        ),

                        /// Categories List
                        XHomeCategories(),
                      ],
                    ),
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


