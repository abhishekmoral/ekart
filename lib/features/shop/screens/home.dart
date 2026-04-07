import 'package:ekart/features/shop/screens/widgets/home_app_bar.dart';
import 'package:ekart/features/shop/screens/widgets/home_app_categoties.dart';
import 'package:ekart/features/shop/screens/widgets/home_search_bar.dart';
import 'package:ekart/utils/constants/colors.dart';
import 'package:ekart/utils/constants/sizes.dart';
import 'package:ekart/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    final isWeb = MediaQuery.of(context).size.width > 600;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header with 2 circular containers
            Container(
              color: XColors.primary,
              padding: const EdgeInsets.all(0),
              child: Stack(
                children: [
                  /// First Circle
                  Positioned(
                    top: -150,
                    right: -250,
                    child: Container(
                      width: 400,
                      height: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(400),
                        color: XColors.white.withOpacity(0.1),
                      ),
                    ),
                  ),

                  /// Second Circle
                  Positioned(
                    top: 100,
                    right: -300,
                    child: Container(
                      width: 400,
                      height: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(400),
                        color: XColors.white.withOpacity(0.1),
                      ),
                    ),
                  ),

                  /// Header Content
                  Padding(
                    padding: const EdgeInsets.all(XSizes.defaultSpace),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// AppBar
                        isWeb
                            ? Center(
                                child: SizedBox(
                                  width: 1200,
                                  child: const HomeAppBar(),
                                ),
                              )
                            : const HomeAppBar(),
                        SizedBox(height: XSizes.spaceBtwItems),

                        /// Search Bar
                        Align(
                          alignment: Alignment.center,
                          child: isWeb
                              ? SizedBox(
                                  width: 600,
                                  child: const HomeSearchBar(),
                                )
                              : const SizedBox(
                                  width: double.infinity,
                                  child: HomeSearchBar(),
                                ),
                        ),
                        SizedBox(height: XSizes.spaceBtwSections),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: XSizes.spaceBtwItems),

            /// Categories
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: isWeb
                    ? XSizes.defaultSpace * 4
                    : XSizes.defaultSpace,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Popular Categories Title
                  Text(
                    XTexts.popularProducts,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  SizedBox(height: XSizes.spaceBtwItems),

                  /// Category Icons
                  HomeCategories(isWeb: isWeb),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
