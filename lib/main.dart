import 'package:flutter/material.dart';
import 'package:kapas/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: ThemeData(primaryColor: Color(0xFF331515)),
    );
  }
}
