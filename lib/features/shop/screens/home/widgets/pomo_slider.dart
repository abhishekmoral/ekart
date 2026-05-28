import 'package:carousel_slider/carousel_slider.dart';
import 'package:ekart/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../common/wigets/custom_shapes/containers/circular_container.dart';
import '../../../../../common/wigets/images/x_rounded_image.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../controllers/home_controller.dart';

class XPromoSlider extends StatelessWidget {
  const XPromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            autoPlay: true,
            onPageChanged: (index, reason) {
              controller.updatePageIndicator(index);
            },
          ),
          items: banners
              .map((url) => XRoundedImage(imageUrl: url))
              .toList(),
        ),

        const SizedBox(height: XSizes.spaceBtwItems),

        Center(
          child: Obx(
                () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  XCircularContainer(
                    width:
                    controller.carousalCurrentIndex.value == i ? 20 : 6,
                    height: 6,
                    margin: const EdgeInsets.only(right: 10),
                    backgroundColor:
                    controller.carousalCurrentIndex.value == i
                        ? XColors.primary
                        : XColors.grey,
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}