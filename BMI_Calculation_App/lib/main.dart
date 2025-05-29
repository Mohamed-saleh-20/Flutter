import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/Home.dart';
import 'package:flutter_application_1/view/result.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BmiCalculater()
        );
      
    
  }
}
