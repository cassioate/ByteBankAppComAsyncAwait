import 'package:bytebank/Widgets/Dashboard/Dashboard.dart';
import 'package:flutter/material.dart';

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[900],
        accentColor: Colors.blue[200],
        buttonTheme: ButtonThemeData(
            buttonColor: Colors.blueAccent[500],
            textTheme: ButtonTextTheme.primary),
      ),
      home: Dashboard(),
    );
  }
}
