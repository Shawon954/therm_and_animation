

import 'package:flutter/material.dart';

import 'package:therm_and_animation/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        textTheme: TextTheme(
          headline6: TextStyle(
            fontSize: 20,
          ),
          bodyText2: TextStyle(
            fontSize: 30,
            color: Colors.pink
          ),
        ),

        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
