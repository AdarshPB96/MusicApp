import 'package:flutter/material.dart';
import 'package:music_application_1/Screens/home.dart';
import 'package:music_application_1/Screens/splash_screen.dart';
import 'package:music_application_1/plansreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
        scaffoldBackgroundColor: Colors.black,

       
        primarySwatch: Colors.red,
      ),
      home:  SplashScreen()
    );
  }
}


    
    

