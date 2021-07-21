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
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class Space extends StatelessWidget {
  Space(this.space);

  final double space;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: space,
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
        color: Colors.white12,
        blurRadius: 5,
        //offset: Offset(0, 2),
      ),
    ]);

final hintTextStyle = TextStyle(
  color: Colors.white54,
);

final labelTextStyle =
    TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold);
