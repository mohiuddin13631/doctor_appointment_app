 import 'package:doctor_appoinment_app/view/NavBar.dart';
import 'package:doctor_appoinment_app/view/appointment.dart';
import 'package:doctor_appoinment_app/view/home_page/HomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NavBar()
    );
  }
}