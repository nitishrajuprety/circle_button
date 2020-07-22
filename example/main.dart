import 'package:flutter/material.dart';
import 'package:circle_button/circle_button.dart';

void main() => runApp(
  MaterialApp(
    home: MyApp(),
  ),
);

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Circle Button"),
      ),
      body: Center(
        child: CircleButton(
          onTap: () => {},
          tooltip: 'Circle Button',
          width: 40.0,
          height: 40.0,
          borderColor: Colors.white,
          borderWidth: 1.0,
          borderStyle: BorderStyle.solid,
          backgroundColor: Colors.transparent,
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}