import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'support_widgets.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  GlobalKey<RegistrationButtonState> keyRegisterationButton = GlobalKey();

  Widget _buildInputFrame({
    required String label,
    required String inputHint,
    required bool shouldInputBeObscured,
    required IconData prefixIcon,
    required TextInputType inputType,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: labelTextStyle,
        ),
        SizedBox(height: 5),
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
        Background(),
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
                SizedBox(
                  height: 20,
                ),
                _buildInputFrame(
                  label: 'Full Name',
                  inputHint: 'Enter your Name',
                  shouldInputBeObscured: false,
                  inputType: TextInputType.name,
                  prefixIcon: Icons.account_circle_rounded,
                ),
                SizedBox(
                  height: 20,
                ),
                _buildInputFrame(
                  label: 'Phone No',
                  inputHint: 'Enter your Phone No',
                  shouldInputBeObscured: false,
                  inputType: TextInputType.phone,
                  prefixIcon: Icons.phone_android,
                ),
                SizedBox(
                  height: 20,
                ),
                _buildInputFrame(
                  label: 'Email',
                  inputHint: 'Enter your Email',
                  prefixIcon: Icons.email,
                  inputType: TextInputType.emailAddress,
                  shouldInputBeObscured: false,
                ),
                SizedBox(
                  height: 20,
                ),
                _buildInputFrame(
                  label: 'Password',
                  inputHint: 'Enter your Password',
                  shouldInputBeObscured: true,
                  inputType: TextInputType.visiblePassword,
                  prefixIcon: Icons.lock,
                ),
                SizedBox(
                  height: 20,
                ),
                _buildInputFrame(
                  label: 'Confirm Password',
                  inputHint: 'Enter Password again',
                  shouldInputBeObscured: true,
                  inputType: TextInputType.visiblePassword,
                  prefixIcon: Icons.lock,
                ),
                SizedBox(
                  height: 35,
                ),
                RegistrationButtonWithState(key: keyRegisterationButton),
                SizedBox(
                  height: 20,
                ),
                SignInTab(keyRegisterationButton: keyRegisterationButton)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
