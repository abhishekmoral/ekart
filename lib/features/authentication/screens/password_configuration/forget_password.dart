import 'package:ekart/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:ekart/utils/constants/sizes.dart';
import 'package:ekart/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

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
                  child: SizedBox(width: 500, child: _ForgetPasswordContent()),
                );
              }

              /// Mobile layout
              return _ForgetPasswordContent();
            },
          ),
        ),
      ),
    );
  }
}

class _ForgetPasswordContent extends StatelessWidget {
  const _ForgetPasswordContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Title
        Text(
          XTexts.xForgetPasswordTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(height: XSizes.spaceBtwItems),

        /// SubTitle
        Text(
          XTexts.xForgetMailSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        SizedBox(height: XSizes.spaceBtwSections),

        /// Email Field
        TextFormField(
          decoration: const InputDecoration(
            prefixIcon: Icon(Iconsax.direct_right),
            labelText: XTexts.xEmail,
          ),
        ),
        SizedBox(height: XSizes.spaceBtwSections),

        /// Submit Button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () =>
                Get.to(() => ResetPasswordScreen(email: "@abhishekmoral")),
            child: const Text(XTexts.submit),
          ),
        ),
      ],
    );
  }
}
