import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../controllers/onboarding_controller.dart';
import 'widgets/onboarding_dot_navigation.dart';
import 'widgets/onboarding_next_button.dart';
import 'widgets/onboarding_page.dart';
import 'widgets/onboarding_skip.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: XImages.xOnBoardingImage1,
                title: XTexts.xOnBoardingTitle1,
                subTitle: XTexts.xOnBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: XImages.xOnBoardingImage2,
                title: XTexts.xOnBoardingTitle2,
                subTitle: XTexts.xOnBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: XImages.xOnBoardingImage3,
                title: XTexts.xOnBoardingTitle3,
                subTitle: XTexts.xOnBoardingSubTitle3,
              ),
            ],
          ),

          /// Skip Button
          const OnBoardingSkip(),

          /// Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),

          /// Next Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}