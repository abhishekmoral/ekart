import 'package:ekart/utils/theme/custom_themes/appbar_theme.dart';
import 'package:ekart/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:ekart/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:ekart/utils/theme/custom_themes/chip_theme.dart';
import 'package:ekart/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:ekart/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:ekart/utils/theme/custom_themes/text_field_theme.dart';
import 'package:ekart/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class XAppTheme {
  XAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    // fontFamily: "",
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: XTextTheme.lightTextTheme,
    chipTheme: XChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: XAppBarTheme.lightAppBarTheme,
    checkboxTheme: XCheckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: XBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: XElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: XOutlinedButtonTheme.lightOutLinedButtonTheme,
    inputDecorationTheme: XTextFormFieldTheme.lightInputDecorationTheme,
  );

  /// Dark Theme.
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    // fontFamily: "",
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: XTextTheme.darkTextTheme,
    chipTheme: XChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: XAppBarTheme.darkAppBarTheme,
    checkboxTheme: XCheckBoxTheme.darkCheckBoxTheme,
    bottomSheetTheme: XBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: XElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: XOutlinedButtonTheme.darkOutLinedButtonTheme,
    inputDecorationTheme: XTextFormFieldTheme.darkInputDecorationTheme,
  );
}
