import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        body: Center(
          child: Container(
            width: 100.0,
            height: 40.0,
            child: ElevatedButton(
              onPressed: () {},
              child: Row(
                children: [
                  Icon(Icons.search),
                  Text("Search"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
