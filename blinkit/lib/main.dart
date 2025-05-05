import 'package:flutter/material.dart';
import 'package:blinkit/Respository/screens/splash/splashscreen.dart';
import 'package:blinkit/domain/constant/Appcolor.dart';

void main (){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Blinkit",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Appcolor.background),
        useMaterial3: false,
      ),
      home: SplashingScreen(),
    );
  }
}