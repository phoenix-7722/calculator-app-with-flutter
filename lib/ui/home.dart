import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        title: Text(
          "ဂဏန်းတွက်စက်",
          style: TextStyle(
            color: Colors.yellow[400],
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(bottom: 40.0),
        child: ListView(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.only(
                    left: 10.0, right: 40.0, top: 320.0, bottom: 20.0),
                alignment: Alignment.bottomRight,
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 27.0,
                    color: Colors.yellow[400],
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                customOutlineButton("၉"),
                customOutlineButton("၈"),
                customOutlineButton("၇"),
                customOutlineButton("+"),
              ],
            ),
            Row(
              children: [
                customOutlineButton("၆"),
                customOutlineButton("၅"),
                customOutlineButton("၄"),
                customOutlineButton("-"),
              ],
            ),
            Row(
              children: [
                customOutlineButton("၃"),
                customOutlineButton("၂"),
                customOutlineButton("၁"),
                customOutlineButton("x"),
              ],
            ),
            Row(
              children: [
                customOutlineButton("C"),
                customOutlineButton("၀"),
                customOutlineButton("="),
                customOutlineButton("/"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget customOutlineButton(String a) {
  return Expanded(
    child: OutlineButton(
      padding: EdgeInsets.all(20.0),
      onPressed: () => buttonClicked(a),
      child: Text(
        "$a",
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.grey[100],
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
  );
}

String result;
String text = "";
void buttonClicked(String buttonText) {
  if (buttonText == "C") {
    result = "";
    text = "";
  } else {
    result = text + buttonText;
  }

  // ignore: unused_element
  void setState(Null Function() param0) {
    text = result;
  }
}
