import 'package:ekart/features/shop/screens/store/widgets/category_tab.dart';
import 'package:flutter/material.dart';

import '../../../../common/wigets/appbar/appbar.dart';
import '../../../../common/wigets/appbar/tabbar.dart';
import '../../../../common/wigets/brands/brand_card.dart';
import '../../../../common/wigets/custom_shapes/containers/Rounded_Container.dart';
import '../../../../common/wigets/custom_shapes/containers/search_container.dart';
import '../../../../common/wigets/images/x_circular_image.dart';
import '../../../../common/wigets/layouts/grid_layout.dart';
import '../../../../common/wigets/products/cart/cart_menu_icon.dart';
import '../../../../common/wigets/texts/section_headind.dart';
import '../../../../common/wigets/texts/x_brand_title_text_with_verified_icon.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/enums.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_function.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: XAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [XCartCounterIcon(onPressed: () {})],
        ), // XAppBar
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: XHelperFunctions.isDarkMode(context)
                    ? XColors.black
                    : XColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(XSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      /// -- Search bar
                      const SizedBox(height: XSizes.spaceBtwItems),
                      const XSearchContainer(
                        text: 'Search in Store',
                        showBorder: true,
                        showBackground: false,
                      ),
                      const SizedBox(height: XSizes.spaceBtwSections),

                      /// Featured Brands
                      XSectionHeading(
                        title: 'Featured Brands',
                        onPressed: () {},
                      ),
                      const SizedBox(height: XSizes.spaceBtwItems / 1.5),

                      /// Brands Grid Layout
                      XGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return XBrandCard(showBorder: false);
                        },
                      ), // XGridLayout
                    ],
                  ),
                ),

                /// Tabs
                bottom: const XTabBar(
                  tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Cosmetics')),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              XCategoryTab(),
              XCategoryTab(),
              XCategoryTab(),
              XCategoryTab(),
              XCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
