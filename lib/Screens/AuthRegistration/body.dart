import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'support_widgets.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Widget _buildInputFrame(
      {required String label,
      required String inputHint,
      required bool shouldInputBeObscured,
      required IconData prefixIcon,
      required TextInputType inputType}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: labelTextStyle,
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          height: MediaQuery.of(context).copyWith().size.height / 18,
          decoration: inputBoxDecorationStyle,
          child: TextField(
            obscureText: shouldInputBeObscured,
            keyboardType: inputType,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 4.5),
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
              vertical: 50,
            ),
            child: Column(
              children: [
                Header('Sign Up'),
                Space(20),
                _buildInputFrame(
                  label: 'Full Name',
                  inputHint: 'Enter your Name',
                  shouldInputBeObscured: false,
                  inputType: TextInputType.name,
                  prefixIcon: Icons.account_circle_rounded,
                ),
                Space(20),
                _buildInputFrame(
                  label: 'Phone No',
                  inputHint: 'Enter your Phone No',
                  shouldInputBeObscured: false,
                  inputType: TextInputType.phone,
                  prefixIcon: Icons.phone_android,
                ),
                Space(20),
                _buildInputFrame(
                  label: 'Email',
                  inputHint: 'Enter your Email',
                  prefixIcon: Icons.email,
                  inputType: TextInputType.emailAddress,
                  shouldInputBeObscured: false,
                ),
                Space(20),
                _buildInputFrame(
                  label: 'Password',
                  inputHint: 'Enter your Password',
                  shouldInputBeObscured: true,
                  inputType: TextInputType.visiblePassword,
                  prefixIcon: Icons.lock,
                ),
                Space(20),
                _buildInputFrame(
                  label: 'Confirm Password',
                  inputHint: 'Enter Password again',
                  shouldInputBeObscured: true,
                  inputType: TextInputType.visiblePassword,
                  prefixIcon: Icons.lock,
                ),
                Space(35),
                RegisterButton(),
                Space(20),
                SignInTab(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
