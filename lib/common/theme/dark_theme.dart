import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsapp_clone/common/extension/custom_theme_extension.dart';
import 'package:whatsapp_clone/common/utils/app_colors.dart';

ThemeData darkTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
      backgroundColor: AppColors.backgroundDark,
      scaffoldBackgroundColor: AppColors.backgroundDark,
      extensions: [CustomThemeExtension.darkMode],
      dialogBackgroundColor: AppColors.backgroundDark,
      dialogTheme: DialogTheme(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10))),
      appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(fontSize: 18),
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarIconBrightness: Brightness.light)),
      bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: AppColors.greyBackground,
          modalBackgroundColor: AppColors.greyBackground,
          shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.vertical(top: Radius.circular(20)))),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.greenDark,
              foregroundColor: AppColors.backgroundDark,
              splashFactory: NoSplash.splashFactory,
              elevation: 0,
              shadowColor: Colors.transparent)));
}
