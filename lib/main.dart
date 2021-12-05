import 'package:flutter/material.dart';
import 'package:app_fitness/constant.dart';
import 'package:app_fitness/screens/home.dart';
import 'package:app_fitness/screens/index.dart';

import 'constant.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HIRE TRAINER',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
      ),
      home: Index(),
    );
  }
}
// flutter run --no-sound-null-safety