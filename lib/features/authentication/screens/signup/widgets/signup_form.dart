import 'package:ekart/features/authentication/screens/signup/verify_email.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_function.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = XHelperFunctions.isDarkMode(context);

    return Form(
      child: Column(
        children: [
          /// First Name & Last Name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: XTexts.xFirstName,
                  ),
                ),
              ),
              SizedBox(width: XSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: XTexts.xLastName,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: XSizes.spaceBtwInputFields),

          /// Username
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.user_edit),
              labelText: XTexts.xUserName,
            ),
          ),
          SizedBox(height: XSizes.spaceBtwInputFields),

          /// Email
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct),
              labelText: XTexts.xEmail,
            ),
          ),
          SizedBox(height: XSizes.spaceBtwInputFields),

          /// Phone Number
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.call),
              labelText: XTexts.xPhoneNumber,
            ),
          ),
          SizedBox(height: XSizes.spaceBtwInputFields),

          /// Password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: XTexts.xPassword,
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          SizedBox(height: XSizes.spaceBtwInputFields / 2),

          /// Privacy Policy & Terms
          Row(
            children: [
              Checkbox(value: false, onChanged: (value) {}),
              Expanded(
                child: RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: dark ? XColors.white : XColors.black,
                    ),
                    children: [
                      /// I agree to
                      const TextSpan(text: 'I agree to '),

                      /// Privacy Policy
                      TextSpan(
                        text: 'Privacy Policy',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: dark ? XColors.white : XColors.primary,
                          decoration: TextDecoration.underline,
                          decorationColor: dark
                              ? XColors.white
                              : XColors.primary,
                        ),
                      ),

                      /// And
                      TextSpan(
                        text: ' ${XTexts.and} ',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: dark ? XColors.white : XColors.black,
                        ),
                      ),

                      /// Terms of use
                      TextSpan(
                        text: 'Terms of use',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: dark ? XColors.white : XColors.primary,
                          decoration: TextDecoration.underline,
                          decorationColor: dark
                              ? XColors.white
                              : XColors.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: XSizes.spaceBtwSections),

          /// SignUp  Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => VerifyEmailScreen(email: "")),
              child: const Text(XTexts.xSignup),
            ),
          ),
        ],
      ),
    );
  }
}
