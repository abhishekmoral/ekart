import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../controllers/onboarding_controller.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Positioned(
        top: XDeviceUtils.getAppBarHeight(),
        right: XSizes.defaultSpace,
        child: OnBoardingController.instance.currentPageIndex.value == 2
            ? const SizedBox.shrink()
            : TextButton(
                onPressed: () => OnBoardingController.instance.skipPage(),
                child: Text(XTexts.skip),
              ),
      ),
    );
  }
}
