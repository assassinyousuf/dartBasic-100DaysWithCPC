import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text("I am the title area"),
          leading: Icon(Icons.search),
          actions: [
            Icon(Icons.alarm),
            Icon(Icons.notification_add),
          ],
        ), // AppBar
        body: Center(
          child: Container(
            child: Text("Hello World"),
          ),
        ), // Center
      ), // Scaffold
    ); // MaterialApp
  }
}
