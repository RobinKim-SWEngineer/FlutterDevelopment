import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'support_widgets.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Widget _buildInputFrame({
    required String label,
    required String inputHint,
    required bool shouldInputBeObscured,
    required IconData prefixIcon,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: labelTextStyle,
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          decoration: inputBoxDecorationStyle,
          child: TextField(
            obscureText: shouldInputBeObscured,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 15),
              hintText: inputHint,
              hintStyle: hintTextStyle,
              border: InputBorder.none,
              prefixIcon: Icon(
                prefixIcon,
                color: Colors.white,
              ),
            ),
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFDE8484),
                Color(0xFFE37777),
                Color(0xFFEF7878),
                Color(0xFFB36A6A),
              ],
            ),
          ),
        ),
        Container(
          height: double.infinity,
          width: double.infinity,
          //decoration: drawBorder(color: Colors.white, width: 5),
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 90,
            ),
            child: Column(
              children: [
                Header('Sign In'),
                Space(30),
                _buildInputFrame(
                  label: 'Email',
                  inputHint: 'Enter your Email',
                  prefixIcon: Icons.email,
                  shouldInputBeObscured: false,
                ),
                Space(30),
                _buildInputFrame(
                  label: 'Password',
                  inputHint: 'Enter your Password',
                  shouldInputBeObscured: true,
                  prefixIcon: Icons.lock,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
