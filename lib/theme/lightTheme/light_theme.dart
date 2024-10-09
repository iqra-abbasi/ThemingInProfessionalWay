
import 'package:flutter/material.dart';
import 'package:themingwithprofessionalway/utils/app_colors.dart';

class LightTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      inputDecorationTheme: InputDecorationTheme(
        fillColor: AppColors.whiteColor,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.border),
        ),
        hintStyle: TextStyle(color: AppColors.hint.withOpacity(.6)),
        suffixStyle: const TextStyle(color: null),
      ),
      cardColor: AppColors.whiteFF,
      cardTheme: const CardTheme(color: null),
      scaffoldBackgroundColor: AppColors.backgroundF7,
      canvasColor: AppColors.darkBlue46,
      appBarTheme: const AppBarTheme(
        backgroundColor:Colors.yellow,
        iconTheme: IconThemeData(color: AppColors.darkBlue46),
      ),
      textTheme: TextTheme(
        bodyMedium: const TextStyle(color: Colors.red),
        bodySmall: const TextStyle(color: AppColors.blue8F),
        labelLarge: const TextStyle(color: AppColors.blue8F),
        labelSmall: TextStyle(color: AppColors.blue8F.withOpacity(.8)),
        labelMedium: const TextStyle(color: AppColors.darkGrey84),
        displaySmall: const TextStyle(color: AppColors.darkBlue46),
        displayLarge: const TextStyle(color: AppColors.whiteFF),
        displayMedium: TextStyle(color: AppColors.blueBC.withOpacity(.2)),
        bodyLarge: const TextStyle(color: AppColors.blueBC),
        titleLarge: const TextStyle(color: AppColors.darkBlue46),
        titleMedium: TextStyle(color: AppColors.blue8F.withOpacity(.8)),
        titleSmall: const TextStyle(color: AppColors.whiteColor),
        headlineMedium: const TextStyle(color: AppColors.whiteFF),
        headlineSmall: TextStyle(color: AppColors.darkBlue46),
        headlineLarge: TextStyle(color: AppColors.blueLight.withOpacity(.4)),
      ),
      sliderTheme: const SliderThemeData(inactiveTrackColor: AppColors.whiteColor),
      iconTheme: const IconThemeData(color: AppColors.whiteFF),
      dividerColor: AppColors.black.withOpacity(.1),
      listTileTheme: ListTileThemeData(
        textColor: AppColors.black,
        iconColor: AppColors.blue8F.withOpacity(.1),
        tileColor: AppColors.black40,
      ),
      dialogTheme: const DialogTheme(backgroundColor: AppColors.whiteFF),
      hintColor: AppColors.greyF7,
      bottomAppBarTheme: BottomAppBarTheme(
        color: Colors.blue,
      ),

    );
  }
}
