import 'package:alex9/presentation/screens/doc_screen.dart';
import 'package:alex9/presentation/screens/login_screen.dart';
import 'package:alex9/presentation/screens/sign_up.dart';
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
      title: 'Doctor Appoinment',
      home: LoginScreen(),
    );
  }
}

