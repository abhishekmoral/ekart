import 'package:ekart/common/wigets/brands/brand_card.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_function.dart';
import '../custom_shapes/containers/Rounded_Container.dart';

class XBrandShowcase extends StatelessWidget {
  const XBrandShowcase({super.key, required this.images});

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return XRoundedContainer(
      showBorder: true,
      borderColor: XColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(XSizes.md),
      margin: const EdgeInsets.only(bottom: XSizes.spaceBtwItems),
      child: Column(
        children: [
          /// Brand with Products Count
          const XBrandCard(showBorder: false),
          const SizedBox(height: XSizes.spaceBtwItems,),

          /// Brand Top 3 Product Images
          Row(
            children: images
                .map((image) => brandTopProductImageWidget(image, context))
                .toList(),
          ),
        ],
      ), // Column
    ); // XRoundedContainer
  }
}

Widget brandTopProductImageWidget(String image, context) {
  return Expanded(
    child: XRoundedContainer(
      height: 100,
      padding: const EdgeInsets.all(XSizes.md),
      margin: const EdgeInsets.only(right: XSizes.sm),
      backgroundColor: XHelperFunctions.isDarkMode(context)
          ? XColors.darkerGrey
          : XColors.white,
      child: Image(fit: BoxFit.contain, image: AssetImage(image)),
    ), // XRoundedContainer
  ); // Expanded
}
