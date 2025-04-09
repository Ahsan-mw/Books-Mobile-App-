import 'package:books_mobile_app/core/utils/constants/app_colors.dart';
import 'package:books_mobile_app/core/utils/theme/widgets/appbar_theme.dart';
import 'package:books_mobile_app/core/utils/theme/widgets/bottom_sheet_theme.dart';
import 'package:books_mobile_app/core/utils/theme/widgets/checkbox_theme.dart';
import 'package:books_mobile_app/core/utils/theme/widgets/chip_theme.dart';
import 'package:books_mobile_app/core/utils/theme/widgets/elevated_button_theme.dart';
import 'package:books_mobile_app/core/utils/theme/widgets/outlined_button_theme.dart';
import 'package:books_mobile_app/core/utils/theme/widgets/text_theme.dart';
import 'package:books_mobile_app/core/utils/theme/widgets/textfiled_theme.dart';
import 'package:flutter/material.dart';

class MobileAppTheme {
  MobileAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: AppColors.grey,
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    textTheme: AppTextTheme.lightTextTheme,
    chipTheme: AppChipTheme.lightChipTheme,
    scaffoldBackgroundColor: AppColors.white,
    appBarTheme: MobileAppBarTheme.lightAppBarTheme,
    checkboxTheme: MobileAppCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: AppBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: AppTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: AppColors.grey,
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    textTheme: AppTextTheme.darkTextTheme,
    chipTheme: AppChipTheme.darkChipTheme,
    scaffoldBackgroundColor: AppColors.black,
    appBarTheme: MobileAppBarTheme.darkAppBarTheme,
    checkboxTheme: MobileAppCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: AppBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: AppTextFormFieldTheme.darkInputDecorationTheme,
  );
}
