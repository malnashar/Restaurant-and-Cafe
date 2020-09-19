import 'package:flutter/material.dart';

import 'package:food_app/ui/intro.dart';
import 'package:food_app/ui/login.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: intro(),
      debugShowCheckedModeBanner: false,
    );
  }
}

