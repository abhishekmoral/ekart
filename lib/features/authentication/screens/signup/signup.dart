import 'package:ekart/common/styles/spacing_styles.dart';
import 'package:ekart/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:ekart/features/authentication/screens/signup/widgets/signup_header.dart';
import 'package:ekart/features/authentication/screens/signup/widgets/signup_social.dart';
import 'package:ekart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: XSpacingStyle.paddingWithAppBarHeight,
          child: LayoutBuilder(
            builder: (context, constraints) {
              /// Web layout
              if (constraints.maxWidth > 600) {
                return Center(
                  child: SizedBox(
                    width: 500,
                    child: _SignupContent(),
                  ),
                );
              }

              /// Mobile layout
              return _SignupContent();
            },
          ),
        ),
      ),
    );
  }
}

class _SignupContent extends StatelessWidget {
  const _SignupContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Title and SubTitle
        const SignupHeader(),
        SizedBox(height: XSizes.spaceBtwItems),

        /// form And Term and Condition
        const SignupForm(),
        SizedBox(height: XSizes.spaceBtwSections),

        /// Divider and Social Buttons
        const SignupSocial(),
      ],
    );
  }
}
