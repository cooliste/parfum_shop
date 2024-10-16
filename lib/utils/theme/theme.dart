import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:parfum_shop/utils/theme/custom_themes/text_theme.dart';
import 'custom_themes/appbar_theme.dart';
import 'custom_themes/bottom_sheet_theme.dart';
import 'custom_themes/chekbox_theme.dart';
import 'custom_themes/chip_theme.dart';
import 'custom_themes/elevated_button_theme.dart';
import 'custom_themes/outlined_button_theme.dart';
import 'custom_themes/text_field_theme.dart';

class PAppTheme{
  PAppTheme._();

  static ThemeData lightTheme = ThemeData(
   useMaterial3:true,
   fontFamily:'Poppins',
   brightness: Brightness.light,
   primaryColor: Colors.blue,
   textTheme: PTextTheme.lightTextTheme,
   chipTheme: PChipTheme.lightChipThemeData,
   scaffoldBackgroundColor: Colors.white,
   appBarTheme: PAppBarTheme.lightAppBarTheme,
   checkboxTheme: PCheckboxTheme.lightCheckboxThemeData,
   bottomSheetTheme: PBottomSheetTheme.lightBottomSheetTheme,
   outlinedButtonTheme: POutlinedButtonTheme.lightOutlinedButtonTheme,
   inputDecorationTheme: PTextFormFieldTheme.lightInputDecorationTheme,
   elevatedButtonTheme:PElevatedButtonTheme.lightElevatedButtonTheme,

   );
  static ThemeData darkTheme = ThemeData(
      useMaterial3:true,
      fontFamily:'Poppins',
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: PAppBarTheme.darkAppBarTheme,
      checkboxTheme: PCheckboxTheme.darkCheckboxThemeData,
      bottomSheetTheme: PBottomSheetTheme.darkBottomSheetTheme,
      outlinedButtonTheme: POutlinedButtonTheme.darkOutlinedButtonTheme,
      inputDecorationTheme: PTextFormFieldTheme.darkInputDecorationTheme,
      textTheme: PTextTheme.darkTextTheme,
  );
}
