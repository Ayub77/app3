import 'package:flutter/material.dart';
class SecondPage extends StatefulWidget {
  
  static final String id = "SecondPage";

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        width: 200,
        height: 200,
        duration: Duration(milliseconds: 300),
        decoration: BoxDecoration(
          color: Colors.red,

        ),

      ),
    );
  }
}