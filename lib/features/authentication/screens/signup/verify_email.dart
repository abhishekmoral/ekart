import 'package:ekart/common/wigets/success_screen/success_screen.dart';
import 'package:ekart/utils/constants/image_strings.dart';
import 'package:ekart/utils/constants/sizes.dart';
import 'package:ekart/utils/constants/text_strings.dart';
import 'package:ekart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../login/login.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key, required this.email});

  final String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// Close Button
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(Icons.clear),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(XSizes.defaultSpace),
          child: LayoutBuilder(
            builder: (context, constraints) {
              /// Web layout
              if (constraints.maxWidth > 600) {
                return Center(
                  child: SizedBox(
                    width: 500,
                    child: _VerifyEmailContent(email: email),
                  ),
                );
              }

              /// Mobile layout
              return _VerifyEmailContent(email: email);
            },
          ),
        ),
      ),
    );
  }
}

class _VerifyEmailContent extends StatelessWidget {
  const _VerifyEmailContent({required this.email});

  final String email;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Animation
        Lottie.asset(
          XImages.xEmailVerifyAnimation,
          width: XHelperFunctions.screenWidth() * 0.6,
          height: XHelperFunctions.screenHeight() * 0.3,
        ),
        SizedBox(height: XSizes.spaceBtwItems),

        /// Title
        Text(
          XTexts.confirmEmail,
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: XSizes.spaceBtwItems),

        /// Email
        Text(
          email,
          style: Theme.of(context).textTheme.labelLarge,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: XSizes.spaceBtwItems),

        /// SubTitle
        Text(
          XTexts.confirmEmailSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: XSizes.spaceBtwSections),

        /// Continue Button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () => Get.to(
              () => SuccessScreen(
                image: XImages.xEmailVerifyAnimation,
                title: XTexts.yourAccountCreatedTitle,
                subTitle: XTexts.yourAccountCreatedSubTitle,
                onPressed: () => Get.to(() => const LoginScreen()),
              ),
            ),
            child: const Text(XTexts.xContinue),
          ),
        ),
        SizedBox(height: XSizes.spaceBtwItems),

        /// Resend Email Button
        SizedBox(
          width: double.infinity,
          child: TextButton(
            onPressed: () {},
            child: const Text(XTexts.resendEmail),
          ),
        ),
      ],
    );
  }
}
