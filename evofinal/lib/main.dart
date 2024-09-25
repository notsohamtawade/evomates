import 'package:evofinal/ev_station_info.dart';
import 'package:evofinal/profile.dart';
import 'package:flutter/material.dart';
import 'loginpage.dart';
import 'ev_map_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EVolve Chargemates',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home:  LoginPage(), // Set the initial screen to LoginPage
    );
  }
}
