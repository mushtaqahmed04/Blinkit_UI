import 'dart:async';

import 'package:flutter/material.dart';
import 'package:blinkit/Respository/Widgets/uihelper.dart';
import 'package:blinkit/Respository/screens/login/loginscreen.dart';
import 'package:blinkit/domain/constant/Appcolor.dart';

class SplashingScreen extends StatefulWidget {
  const SplashingScreen({super.key});

  @override
  State<SplashingScreen> createState() => _SplashingScreenState();
}

class _SplashingScreenState extends State<SplashingScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration (seconds : 0),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Loginscreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Uihelper.AddImage(img: "image 1.png")
          ],
        ),
      ),
    );

  }
}