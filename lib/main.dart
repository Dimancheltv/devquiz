import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QuizApp',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        textTheme: TextTheme(
          caption: TextStyle(fontSize: 22.0, color: Colors.white),
        ),
        fontFamily: 'Righteous-Regular',
      ),
      home: HomePage(),
    );
  }
}
