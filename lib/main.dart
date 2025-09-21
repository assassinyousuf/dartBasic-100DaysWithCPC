import 'package:flutter/material.dart';
import 'list_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: ListView(
          children: const [
            ListItem(color: Colors.green, text: 'Hi'),
            ListItem(color: Colors.red, text: 'Hello'),
            ListItem(color: Colors.blue, text: 'Greetings'),
            ListItem(color: Colors.blue, text: 'Greetings'),
            // Add more if you like:
            // ListItem(color: Colors.purple, text: 'Another one'),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
