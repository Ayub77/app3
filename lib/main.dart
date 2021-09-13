
import 'package:flutter/material.dart';
import 'package:flutter_application_6/pages/homepage.dart';
import 'package:flutter_application_6/pages/secondpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        HomePage.id: (context)=>HomePage(),
        SecondPage.id: (context)=>SecondPage(),
      },
    );
  }
  
}

