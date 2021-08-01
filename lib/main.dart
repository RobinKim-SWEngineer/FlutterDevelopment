import 'package:demo/Screens/Welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
    ),
  );
}
