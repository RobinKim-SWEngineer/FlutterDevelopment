import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  DateTime _selectedDate = DateTime.now();

  _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: _selectedDate,
        firstDate: DateTime(1900),
        lastDate: DateTime.now());

    if (pickedDate != null) {
      setState(() {
        _selectedDate = pickedDate;
        _showSnackBarMessage(
            message: 'Your birth date is selected!', context: context);
      });
    }
  }

  ScaffoldFeatureController _showSnackBarMessage(
      {required String message, required BuildContext context}) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        message,
      ),
      duration: Duration(
        seconds: 1,
      ),
    ));
  }

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
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      TextButton.icon(
                        onPressed: () {
                          _selectDate(context);
                        },
                        icon: Icon(Icons.calendar_today_outlined),
                        style: TextButton.styleFrom(
                          side: BorderSide(
                            color: Colors.brown,
                          ),
                        ),
                        label: Text(
                          '$_selectedDate'.split(' ')[0],
                          style: TextStyle(
                            fontSize: 18,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 80,
                      ),
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
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)))),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
