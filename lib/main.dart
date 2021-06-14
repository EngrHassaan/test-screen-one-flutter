import 'package:flutter/material.dart';
import 'string_data.dart';
import'main_screen.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: StrUseInApp.appTitle,
      // debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
