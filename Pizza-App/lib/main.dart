import 'package:first_app/OrderScreen.dart';
import 'package:first_app/core/Custom%20Wedgit.dart';
import 'package:first_app/welcomeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
         home:WelcomeScreen()
        );
  }
}
