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
            ))
      ],
    );
  }
}

class RegisterButton extends StatelessWidget {
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
        onPressed: () {},
      ),
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
