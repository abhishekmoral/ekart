import 'package:ekart/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:ekart/features/authentication/screens/signup/signup.dart';
import 'package:ekart/navigation_menu.dart';
import 'package:ekart/utils/constants/sizes.dart';
import 'package:ekart/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: XSizes.spaceBtwSections),
        child: Column(
          children: [
            /// Email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: XTexts.xEmail,
              ),
            ),
            SizedBox(height: XSizes.spaceBtwInputFields),

            /// Password
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: XTexts.xPassword,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            SizedBox(height: XSizes.spaceBtwInputFields / 2),

            /// Remember Me and Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Remember Me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(XTexts.xRememberMe),
                  ],
                ),

                /// Forget Password
                TextButton(
                  onPressed: () => Get.to(() => ForgetPasswordScreen()),
                  child: const Text(XTexts.xForgetPassword),
                ),
              ],
            ),

            /// Sign In Button
            SizedBox(height: XSizes.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => NavigationMenu()),
                child: const Text(XTexts.xSignIn),
              ),
            ),
            SizedBox(height: XSizes.spaceBtwItems),

            /// Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => SignupScreen()),
                child: const Text(XTexts.xCreateAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
