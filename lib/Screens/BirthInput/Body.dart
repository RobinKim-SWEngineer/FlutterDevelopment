import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Expanded(
              flex: 3,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Text(
                      'TimeMatters',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Welcome to TimeMatters, Let's explore!",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Image.asset(
                      'assets/images/ilovemytime.png',
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Calculate',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.deepOrange,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15)))
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
