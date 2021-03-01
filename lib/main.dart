import 'package:buddies_app/welcome_page/welcome_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Buddies App',
      home: BuddiesApp(),
    );
  }
}
