import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:therm_and_animation/mainpage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {

    super.initState();

    Timer(Duration(seconds: 7),
        ()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MainPage()) ));

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         Lottie.asset("assets/images/loading.json"),

      AnimatedTextKit(
            animatedTexts: [
              WavyAnimatedText('Welcome',textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 30)),

            ],
            isRepeatingAnimation: true,

          ),

        ]
      ),
    );
  }
}
