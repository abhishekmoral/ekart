import 'package:ekart/app.dart';
import 'package:ekart/common/wigets/appbar/appbar.dart';
import 'package:ekart/common/wigets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:ekart/features/shop/screens/widgets/home_app_bar.dart';
import 'package:ekart/utils/constants/sizes.dart';
import 'package:ekart/utils/constants/text_strings.dart';
import 'package:ekart/utils/device/device_utility.dart';
import 'package:ekart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:ekart/utils/constants/colors.dart';
import 'package:iconsax/iconsax.dart';

import '../../../common/wigets/custom_shapes/constainers/circular_container.dart';
import '../../../common/wigets/custom_shapes/constainers/primary_header_container.dart';
import '../../../common/wigets/custom_shapes/constainers/search_container.dart';
import '../../../common/wigets/custom_shapes/curved_edges/curve_edges_widget.dart';
import '../../../common/wigets/products/cart/cart_menu_icon.dart';

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
                children: [
                  /// AppBAr
                  XHomeAppBar(),
                  const SizedBox(height: XSizes.spaceBtwSections),

                  /// SearchBar
                  XSearchContainer(text: " Search in Store"),

                  /// Categories
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
