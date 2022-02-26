import 'package:flutter/material.dart';
import 'screens/LoginPage.dart';
import 'screens/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Work Saga',
      home: SplashScreen(),
    );
  }
}
