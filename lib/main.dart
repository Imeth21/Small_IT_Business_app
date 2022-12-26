import 'package:flutter/material.dart';
import 'Home.dart';
import 'package:testing1/Splash.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        darkTheme: ThemeData(
        primaryColor: Color(0xFF004080),
        ),

      home: AnimatedSplashScreen(splash: 'images/Source Code.png',splashIconSize: 300,
        duration:3000,
        backgroundColor: Colors.white,
        nextScreen: Home(),
        splashTransition: SplashTransition.rotationTransition,


      ),
    );
  }
}
