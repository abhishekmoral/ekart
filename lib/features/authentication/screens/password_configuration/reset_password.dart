import 'package:ekart/utils/constants/image_strings.dart';
import 'package:ekart/utils/constants/sizes.dart';
import 'package:ekart/utils/constants/text_strings.dart';
import 'package:ekart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({
    super.key,
    required this.email,
  });

  final String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// Back and Close Buttons
      appBar: AppBar(
        automaticallyImplyLeading: true,
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
                    child: _ResetPasswordContent(email: email),
                  ),
                );
              }

              /// Mobile layout
              return _ResetPasswordContent(email: email);
            },
          ),
        ),
      ),
    );
  }
}

class _ResetPasswordContent extends StatelessWidget {
  const _ResetPasswordContent({
    required this.email,
  });

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
          XTexts.xEmailVerificationTitle,
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
          XTexts.xEmailVerificationSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: XSizes.spaceBtwSections),

        /// Done Button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text(XTexts.done),
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