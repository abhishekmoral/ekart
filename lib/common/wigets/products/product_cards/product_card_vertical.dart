import 'package:ekart/common/wigets/texts/product_price_text.dart';
import 'package:ekart/common/wigets/texts/product_title_text.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_function.dart';
import '../../../styles/shadows.dart';
import '../../custom_shapes/containers/Rounded_Container.dart';
import '../../images/x_rounded_image.dart';
import '../../icons/x_circular_icon.dart'; // Ensure you import your XCircularIcon here

class XProductCardVertical extends StatelessWidget {
  const XProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = XHelperFunctions.isDarkMode(context);

    /// Container with side paddings, color, edges, radius and shadow.
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [XShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(XSizes.productImageRadius),
          color: dark ? XColors.darkerGrey : XColors.white,
        ), // BoxDecoration
        child: Column(
          children: [
            /// Thumbnail, Wishlist Button, Discount Tag
            XRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(XSizes.sm),
              backgroundColor: dark ? XColors.dark : XColors.white,
              child: Stack(
                children: [
                  /// -- Thumbnail Image
                  const XRoundedImage(
                    imageUrl: XImages.productImage1,
                    applyImageRadius: true,
                  ),

                  /// -- Sale Tag
                  Positioned(
                    top: 12,
                    child: XRoundedContainer(
                      radius: XSizes.sm,
                      backgroundColor: XColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                        horizontal: XSizes.sm,
                        vertical: XSizes.xs,
                      ),
                      child: Text(
                        '25%',
                        style: Theme.of(
                          context,
                        ).textTheme.labelLarge!.apply(color: XColors.black),
                      ),
                    ), // XRoundedContainer
                  ), // Positioned
                  /// -- Favourite Icon Button
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: XCircularIcon(
                      icon: Iconsax.heart5,
                      // Assumed your custom icon pack prefix remains intact or matches your icon setup
                      color: Colors.red,
                    ),
                  ),
                ],
              ), // Stack
            ),
            SizedBox(height: XSizes.spaceBtwItems / 2),

            /// -- Details
            Padding(
              padding: EdgeInsets.only(left: XSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  XProductTitleText(title: 'Jacket is Good', smallSize: true),
                  const SizedBox(height: XSizes.spaceBtwItems / 2),
                  Row(
                    children: [
                      Text(
                        'Nike',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const SizedBox(width: XSizes.xs),
                      const Icon(
                        Iconsax.verify5,
                        color: XColors.primary,
                        size: XSizes.iconXs,
                      ),
                    ],
                  ), // Row
                ],
              ),
            ),
            Spacer(),
            /// Price Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Price
                Padding(
                  padding: const EdgeInsets.only(left: XSizes.sm),
                  child: XProductPriceText(price: '35.5'),
                ),

                Container(
                  decoration: const BoxDecoration(
                    color: XColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(XSizes.cardRadiusMd),
                      bottomRight: Radius.circular(XSizes.productImageRadius),
                    ), // BorderRadius.only
                  ), // BoxDecoration
                  child: SizedBox(
                    width: XSizes.iconLg * 1.2,
                    height: XSizes.iconLg * 1.2,
                    child: const Center(
                      child: Icon(Iconsax.add, color: XColors.white),
                    ),
                  ), // SizedBox
                ), // Container
              ],
            ), // Row
          ],
        ), // Column
      ),
    );
  }
}
