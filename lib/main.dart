

import 'package:flutter/material.dart';

import 'package:login/splash.dart';

void main(List<String> args) {
  runApp(const MyApp());
}
const SAVE_KEY_NAME = 'UserLoggedIn';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen()
    );
  }
}


