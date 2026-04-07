import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

class XTextFormFieldTheme {
  XTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: XColors.darkGrey,
    suffixIconColor: XColors.darkGrey,
    labelStyle: const TextStyle().copyWith(fontSize: XSizes.fontSizeMd, color: XColors.black),
    hintStyle: const TextStyle().copyWith(fontSize: XSizes.fontSizeSm, color: XColors.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(color: XColors.black.withValues(alpha: 0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(XSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: XColors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(XSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: XColors.grey),
    ),
    focusedBorder:const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(XSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: XColors.dark),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(XSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: XColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(XSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: XColors.warning),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: XColors.darkGrey,
    suffixIconColor: XColors.darkGrey,
    labelStyle: const TextStyle().copyWith(fontSize: XSizes.fontSizeMd, color: XColors.white),
    hintStyle: const TextStyle().copyWith(fontSize: XSizes.fontSizeSm, color: XColors.white),
    floatingLabelStyle: const TextStyle().copyWith(color: XColors.white.withValues(alpha: 0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(XSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: XColors.darkGrey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(XSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: XColors.darkGrey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(XSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: XColors.white),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(XSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: XColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(XSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: XColors.warning),
    ),
  );
}