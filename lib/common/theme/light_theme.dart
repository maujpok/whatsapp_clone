import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsapp_clone/common/extension/custom_theme_extension.dart';
import 'package:whatsapp_clone/common/utils/app_colors.dart';

ThemeData lightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
      backgroundColor: AppColors.backgroundLight,
      scaffoldBackgroundColor: AppColors.backgroundLight,
      extensions: [CustomThemeExtension.lightMode],
      dialogBackgroundColor: AppColors.backgroundLight,
      dialogTheme: DialogTheme(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: AppColors.greenLight,
          titleTextStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.transparent, statusBarIconBrightness: Brightness.dark)),
      tabBarTheme: const TabBarTheme(
          indicator: UnderlineTabIndicator(borderSide: BorderSide(color: Colors.white, width: 4)),
          unselectedLabelColor: Color(0xFFB3D9D2),
          labelColor: Colors.white),
      bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: AppColors.backgroundLight,
          modalBackgroundColor: AppColors.backgroundLight,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20)))),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.greenLight,
              foregroundColor: AppColors.backgroundLight,
              splashFactory: NoSplash.splashFactory,
              elevation: 0,
              shadowColor: Colors.transparent)),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: AppColors.greenDark, foregroundColor: Colors.white));
}
