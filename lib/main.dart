import 'package:flutter/material.dart';
import 'package:hotelbookingapp/NewScreen.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(iconTheme: IconThemeData(color: Vx.black))),
      debugShowCheckedModeBanner: false,
      home: NewScreen(),
    );
  }
}
