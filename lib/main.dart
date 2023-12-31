import 'package:flutter/material.dart';
import 'package:greengrocer/src/auth/sign_in_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Green Grocer',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        
      ),
      debugShowCheckedModeBanner: false,
      home: const SignInScreen(),
    );
  }
}