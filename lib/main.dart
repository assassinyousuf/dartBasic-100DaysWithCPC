import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SizedBox(
            width: 208, // 100 + 100 + 4*2 for margins
            height: 208,
            child: Column(
              children: [
                Row(children: [colorBox(Colors.red), colorBox(Colors.blue)]),
                Row(
                  children: [colorBox(Colors.purple), colorBox(Colors.orange)],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Helper widget to create a fixed-size color box
  Widget colorBox(Color color) {
    return Container(
      height: 100,
      width: 100,
      color: color,
      margin: const EdgeInsets.all(0), // spacing between boxes
    );
  }
}
