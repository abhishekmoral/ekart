import 'package:ekart/utils/constants/sizes.dart';
import 'package:ekart/utils/constants/text_strings.dart';
import 'package:ekart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    this.onPressed,
  });

  final String image;
  final String title;
  final String subTitle;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    child: _SuccessContent(
                      image: image,
                      title: title,
                      subTitle: subTitle,
                      onPressed: onPressed,
                    ),
                  ),
                );
              }

              /// Mobile layout
              return _SuccessContent(
                image: image,
                title: title,
                subTitle: subTitle,
                onPressed: onPressed,
              );
            },
          ),
        ),
      ),
    );
  }
}

class _SuccessContent extends StatelessWidget {
  const _SuccessContent({
    required this.image,
    required this.title,
    required this.subTitle,
    this.onPressed,
  });

  final String image;
  final String title;
  final String subTitle;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: XSizes.spaceBtwSections * 2),

        /// Animation
        Lottie.asset(
          image,
          width: XHelperFunctions.screenWidth() * 0.7,
          height: XHelperFunctions.screenHeight() * 0.35,
        ),
        SizedBox(height: XSizes.spaceBtwSections),

        /// Title
        Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: XSizes.spaceBtwItems),

        /// SubTitle
        Text(
          subTitle,
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: XSizes.spaceBtwSections * 2),

        /// Continue Button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: onPressed,
            child: const Text(XTexts.xContinue),
          ),
        ),
      ],
    );
  }
}