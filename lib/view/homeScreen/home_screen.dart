import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:themingwithprofessionalway/theme/Provider/theme_provider.dart';
import 'package:themingwithprofessionalway/utils/app_constants.dart';
import 'package:themingwithprofessionalway/view/homeScreen2/home_screen2.dart';
import 'package:themingwithprofessionalway/widgets/custom_switch.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).inputDecorationTheme.fillColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Consumer<ThemeProvider>(
              builder: (context, themeProvide, child) {
                return CustomSwitch(
                  value: AppConstants.themValue,
                  status: AppConstants.themValue == false
                      ? "lightMode"
                      : "darkMode",
                  onChanged: (bool value) async {
                    final prefs = await SharedPreferences.getInstance();
                    prefs.setBool("themeValue", value);
                    themeProvide.setTheme(isDarkMode: value);
                  },
                  titleText:'theme',
                  subtitleText: "toggleToSwitch",
                );
              },
            ),

            ElevatedButton(
              style: ButtonStyle(
                backgroundColor:MaterialStateProperty.all(
                    Theme.of(context).appBarTheme.backgroundColor

                ),
                // backgroundColor: MaterialStateProperty.all(
                //   Theme.of(context).buttonTheme.colorScheme?.background,
                // ),
              ),
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => HomeScreen2(),));
              },
                child:Text('go to next page',
                style: TextStyle(
                  color: Theme.of(context).textTheme.labelMedium!.color
                ),),
            ),

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Theme.of(context).bottomAppBarTheme.color,
          items: [
BottomNavigationBarItem(icon: Icon(Icons.home,),label: 'jome'),
BottomNavigationBarItem(icon: Icon(Icons.add),label: 'jome'),
BottomNavigationBarItem(icon: Icon(Icons.add),label: 'jome'),
BottomNavigationBarItem(icon: Icon(Icons.add),label: 'jome'),

      ]),
    );
  }
}
