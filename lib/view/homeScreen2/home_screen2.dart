import 'package:flutter/material.dart';
class HomeScreen2 extends StatelessWidget {
  const HomeScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
        children: [
          Text('this is home screen second page',
          style: TextStyle(
            color: Theme.of(context).textTheme.bodyMedium!.color,
          ),),
        ],
      ),
    );
  }
}
