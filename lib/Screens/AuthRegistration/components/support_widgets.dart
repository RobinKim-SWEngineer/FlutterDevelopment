import 'package:demo/Screens/AuthRegistration/components/input_validation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  Header(this.header);

  final String header;

  @override
  Widget build(BuildContext context) {
    return Text(
      header,
      style: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class SignInTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Have an account ?',
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Sign In',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

class RegistrationButton extends StatelessWidget {
  RegistrationButton(this.validateAllInput);
  Function validateAllInput;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.all(10),
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
          ),
          child: Text(
            'REGISTER',
            style: TextStyle(
              letterSpacing: 1,
              fontSize: 20,
              color: Colors.deepOrangeAccent,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () {}),
    );
  }
}

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

Decoration drawBorder({required Color color, required double width}) {
  return BoxDecoration(
    border: Border.all(
      color: color,
      width: width,
    ),
  );
}

InputDecoration getInputDecoration(
    {required InputType input, String? errorText}) {
  return InputDecoration(
    contentPadding: EdgeInsets.all(4.5),
    hintText: _getHint(input),
    helperText: '',
    hintStyle: hintTextStyle,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    errorStyle: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.bold,
      color: Colors.red,
    ),
    errorText: errorText,
    helperStyle: TextStyle(fontSize: 12),
    prefixIcon: Icon(
      _getIcon(input),
      color: Colors.white,
    ),
  );
}

String _getHint(InputType input) {
  switch (input) {
    case InputType.fullName:
      return 'Enter your Name';
    case InputType.phoneNo:
      return 'Enter your Phone No';
    case InputType.email:
      return 'Enter your Email';
    case InputType.password:
      return 'Enter your Password';
    case InputType.passwrdComfirmation:
      return 'Enter your Password again';
  }
}

IconData _getIcon(InputType input) {
  switch (input) {
    case InputType.fullName:
      return Icons.account_circle_rounded;
    case InputType.phoneNo:
      return Icons.phone_android;
    case InputType.email:
      return Icons.email;
    case InputType.password:
      return Icons.lock;
    case InputType.passwrdComfirmation:
      return Icons.lock;
  }
}

final inputBoxDecorationStyle = BoxDecoration(
    color: Color(0xFFB36A6A),
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
      BoxShadow(
        color: Colors.white,
        blurRadius: 10,
        //offset: Offset(0, 2),
      ),
    ]);

final hintTextStyle = TextStyle(
  color: Colors.white54,
  fontSize: 13,
);

final labelTextStyle = TextStyle(
  fontSize: 15,
  color: Colors.white,
  fontWeight: FontWeight.bold,
);
