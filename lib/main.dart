import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        body: Container(
          color: Colors.red,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              child: Image.network(
                "https://th.bing.com/th/id/R.d6623897be1a53a6bec001a1db038778?rik=rXUo0nUmqiuQ3g&pid=ImgRaw&r=0",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
