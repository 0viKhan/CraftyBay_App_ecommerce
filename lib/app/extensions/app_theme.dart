import 'package:e_commerce_shop/app/extensions/app_colors.dart' show AppColors;
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme =>
      ThemeData(colorSchemeSeed: AppColors.themeColor,
          filledButtonTheme:_filledButtonThemeData,
        inputDecorationTheme:_inputDecorationTheme,
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold
          )
        ),appBarTheme: AppBarTheme(
            titleTextStyle: TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.w500
            ),
          )

      );

  static ThemeData get dartThemeData => ThemeData(
    colorSchemeSeed: AppColors.themeColor,
    brightness: Brightness.dark,
    filledButtonTheme:_filledButtonThemeData,
    inputDecorationTheme:_inputDecorationTheme,
  );



      static FilledButtonThemeData get _filledButtonThemeData=>
         FilledButtonThemeData(
  style: FilledButton.styleFrom(
  fixedSize: Size.fromWidth(double.maxFinite),
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(8),
  ),
  padding: EdgeInsets.symmetric(vertical: 12),
  textStyle: TextStyle(fontSize: 16, color: Colors.redAccent),
  backgroundColor: AppColors.themeColor,
  ),

  );
  static InputDecorationTheme get _inputDecorationTheme=>InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
    hintStyle: TextStyle(
      fontWeight: FontWeight.w300
    ),

    border: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.themeColor),
    ),


    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.themeColor),
    ),


    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.themeColor, width: 2),
    ),
  );

}
