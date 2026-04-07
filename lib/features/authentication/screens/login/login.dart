import 'package:ekart/common/styles/spacing_styles.dart';
import 'package:ekart/features/authentication/screens/login/widget/login_form.dart';
import 'package:ekart/features/authentication/screens/login/widget/login_header.dart';
import 'package:ekart/features/authentication/screens/login/widget/login_social.dart';
import 'package:ekart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    child: _LoginContent(),
                  ),
                );
              }

              /// Mobile layout
              return _LoginContent();
            },
          ),
        ),
      ),
    );
  }
}

class _LoginContent extends StatelessWidget {
  const _LoginContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Logo, Title and SubTitle
        const LoginHeader(),
        SizedBox(height: XSizes.spaceBtwItems),

        /// Form
        const LoginForm(),
        SizedBox(height: XSizes.spaceBtwSections),


        /// Divider and  Social Buttons.
        const LoginSocial(),
      ],
    );
  }
}