import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_function.dart';
import '../custom_shapes/containers/Rounded_Container.dart';
import '../images/x_circular_image.dart';
import '../texts/x_brand_title_text_with_verified_icon.dart';

class XBrandCard extends StatelessWidget {
  const XBrandCard({super.key, required this.showBorder, this.onTap});

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      /// Container Design
      child: XRoundedContainer(
        padding: const EdgeInsets.all(XSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            /// -- Icon
            Flexible(
              child: XCircularImage(
                isNetworkImage: false,
                image: XImages.productImage1,
                backgroundColor: Colors.transparent,
                overlayColor: XHelperFunctions.isDarkMode(context)
                    ? XColors.white
                    : XColors.black,
              ),
            ), // XCircularImage
            const SizedBox(width: XSizes.spaceBtwItems / 2),

            /// -- Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const XBrandTitleWithVerifiedIcon(
                    title: 'Nike',
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    '256 products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  ), // Text
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
