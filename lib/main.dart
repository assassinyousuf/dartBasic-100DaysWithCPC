import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Colors.red,
                  height: 100.0,
                  width: double.infinity,
                ),
                Container(
                  color: Colors.green,
                  height: 100.0,
                  width: double.infinity,
                ),
                Container(
                  color: Colors.red,
                  height: 100.0,
                  width: double.infinity,
                ),
                Container(
                  color: Colors.green,
                  height: 100.0,
                  width: double.infinity,
                ),Container(
                  color: Colors.red,
                  height: 100.0,
                  width: double.infinity,
                ),
                Container(
                  color: Colors.green,
                  height: 100.0,
                  width: double.infinity,
                ),Container(
                  color: Colors.red,
                  height: 100.0,
                  width: double.infinity,
                ),
                Container(
                  color: Colors.green,
                  height: 100.0,
                  width: double.infinity,
                ),Container(
                  color: Colors.red,
                  height: 100.0,
                  width: double.infinity,
                ),
                Container(
                  color: Colors.green,
                  height: 100.0,
                  width: double.infinity,
                ),
              ],
            ),
          )
      ),
    );
  }
}
