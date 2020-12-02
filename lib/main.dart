import 'package:flutter/material.dart';
import 'package:scenery/Screens/activities.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Restaursnt',
      home: Home(),
    );
  }
}
