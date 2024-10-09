import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:themingwithprofessionalway/theme/darkTheme/dark_theme.dart';
import 'package:themingwithprofessionalway/theme/lightTheme/light_theme.dart';
import 'package:themingwithprofessionalway/utils/app_colors.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:themingwithprofessionalway/utils/app_constants.dart';


class ThemeProvider with ChangeNotifier {
  ThemeData? _themeData = ThemeData.light();

  ThemeData? getTheme() => _themeData;
  ThemeProvider() {
    initializeTheme();
  }

  // Define light and dark themes

  //////////////////////////////////////dark theme///////////////
  final darkTheme = ThemeData(

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
    buttonTheme:const  ButtonThemeData(
        buttonColor:Colors.red,
    ),

    scaffoldBackgroundColor: AppColors.darkBg,
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
      headlineLarge: TextStyle(color: AppColors.darkThemeBlack),
      headlineSmall: TextStyle(color: AppColors.balck60),

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


  ///////////////////////light theme///////////
  final lightTheme = ThemeData(
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
    buttonTheme: ButtonThemeData(buttonColor:AppColors.balck),
    scaffoldBackgroundColor: AppColors.backgroundF7,
    appBarTheme: const AppBarTheme(
      backgroundColor:Colors.yellow,
      iconTheme: IconThemeData(color: AppColors.darkBlue46),
    ),
    textTheme: TextTheme(
      bodyMedium: const TextStyle(color: Colors.red),
      bodySmall: const TextStyle(color: AppColors.blue8F),
      labelLarge: const TextStyle(color: AppColors.blue8F),
      labelSmall:  TextStyle(color: AppColors.blue8F.withOpacity(.8)),
      labelMedium: const TextStyle(color: AppColors.darkGrey84),
      displaySmall: const TextStyle(color: AppColors.darkBlue46),
      displayLarge: const TextStyle(color: AppColors.whiteFF),
      displayMedium: TextStyle(color: AppColors.blueBC.withOpacity(.2)),
      bodyLarge: const TextStyle(color: AppColors.blueBC),
      titleLarge: const TextStyle(color: AppColors.darkBlue46),
      titleMedium: TextStyle(color: AppColors.blue8F.withOpacity(.8)),
      titleSmall: const TextStyle(color: AppColors.whiteColor),
      headlineMedium: const TextStyle(color: AppColors.whiteFF),
      headlineSmall:const TextStyle(color: AppColors.black),
      headlineLarge:const TextStyle(color: AppColors.balck),
    ),
    sliderTheme: const SliderThemeData(
        inactiveTrackColor: AppColors.whiteColor),
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


////////////////
  Future<void> initializeTheme() async {
    bool themeMode = await _getStoredThemeMode();
    _themeData = themeMode ? DarkTheme.darkTheme : LightTheme.lightTheme;
    notifyListeners();
  }

  ////////////store theme value in shared preferences

  Future<bool> _getStoredThemeMode() async {
    final prefs = await SharedPreferences.getInstance();
    bool? themeMode = prefs.getBool("themeValue");
    if (themeMode == null) {
      themeMode = false;//by setting it true it show dark mode automatically and vise versa
      await prefs.setBool("themeValue", themeMode);
    }
    AppConstants.themValue = themeMode;
    return themeMode;
  }

  void setTheme({required bool isDarkMode}) async {
    _themeData = isDarkMode ? DarkTheme.darkTheme : LightTheme.lightTheme;
    AppConstants.themValue = isDarkMode;
    await _saveThemeMode(isDarkMode);
    notifyListeners();
  }

  Future<void> _saveThemeMode(bool isDarkMode) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool("themeValue", isDarkMode);
  }
}