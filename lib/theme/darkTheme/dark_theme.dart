import 'package:flutter/material.dart';
import 'package:themingwithprofessionalway/utils/app_colors.dart';


class DarkTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      inputDecorationTheme: InputDecorationTheme(
        fillColor: AppColors.darkThemeBlack,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.balck60),
        ),
        hintStyle: TextStyle(color: AppColors.whiteFF.withOpacity(.3)),
        suffixStyle: const TextStyle(color: AppColors.whiteFF),
      ),
      cardColor: AppColors.darkThemeBlack,
      cardTheme: const CardTheme(color: AppColors.whiteFF),
      scaffoldBackgroundColor: AppColors.darkBg,
      canvasColor: AppColors.darkThemeBlack,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.red,
      iconTheme: IconThemeData(color: AppColors.whiteFF),
      ),
      textTheme: TextTheme(
        bodyMedium: const TextStyle(color:Colors.yellow),
        bodySmall: const TextStyle(color: AppColors.grayText),
        labelLarge: const TextStyle(color: AppColors.whiteFF),
        labelSmall: TextStyle(color: AppColors.whiteFF.withOpacity(.2)),
        labelMedium: const TextStyle(color: AppColors.grayText),
        displaySmall: const TextStyle(color: AppColors.whiteEEE),
        displayLarge: const TextStyle(color: AppColors.blue8F),
        displayMedium: const TextStyle(color: AppColors.darkBg),
        bodyLarge: const TextStyle(color: AppColors.whiteColor),
        titleLarge: const TextStyle(color: AppColors.whiteFF),
        titleMedium: const TextStyle(color: AppColors.grayText),
        titleSmall: const TextStyle(color: AppColors.lightBlack5B),
        headlineMedium: const TextStyle(color: AppColors.darkBg),
        headlineSmall: TextStyle(color: AppColors.whiteFF),
        headlineLarge: TextStyle(color: AppColors.grey28),
      ),
      sliderTheme: SliderThemeData(
          inactiveTrackColor: AppColors.whiteFF.withOpacity(.2)),
      iconTheme: const IconThemeData(color: AppColors.darkBg),
      dividerColor: AppColors.grayText,
      listTileTheme: const ListTileThemeData(
        textColor: AppColors.whiteEEE,
        iconColor: AppColors.darkBg,
        tileColor: AppColors.white2D2,
      ),
      dialogTheme: const DialogTheme(backgroundColor: AppColors.darkThemeBlack),
      hintColor: AppColors.whiteColor,
      bottomAppBarTheme: BottomAppBarTheme(
        color: Colors.red,
      ),
    );
  }
}

