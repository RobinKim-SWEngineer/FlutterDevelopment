import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:demo/Screens/AuthRegistration/body.dart';

class AuthRegistrationScreen extends StatefulWidget {
  @override
  _AuthRegistrationScreen createState() => _AuthRegistrationScreen();
}

class _AuthRegistrationScreen extends State<AuthRegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
