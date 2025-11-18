import 'package:e_commerce_shop/app/extensions/app_colors.dart' show AppColors;
import 'package:flutter/material.dart';

class AppTheme
{
 static ThemeData get lightTheme=> ThemeData(
  colorSchemeSeed: AppColors.themeColor,

  );
static ThemeData get dartThemeData=> ThemeData(
  colorSchemeSeed: AppColors.themeColor,
  brightness: Brightness.dark
,
);


}