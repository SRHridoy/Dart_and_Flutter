import 'package:code_forces_analyzer/pages/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main()=>runApp(CodeForcessApp());

class CodeForcessApp extends StatelessWidget {
  const CodeForcessApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
