import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:themingwithprofessionalway/theme/Provider/theme_provider.dart';
import 'package:themingwithprofessionalway/view/homeScreen/home_screen.dart';

void main(){

  runApp(
MultiProvider(providers: [
  ChangeNotifierProvider(create: (context) => ThemeProvider(),)
],
child:MyApp() ,
),
      );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (context, themeProvider, child) {
      return MaterialApp(

        theme: themeProvider.getTheme(),
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      );
    },);
  }
}
