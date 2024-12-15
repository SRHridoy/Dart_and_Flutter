import 'package:flutter/material.dart';
import 'package:flutter_widgets_class_7/pages/class_seven.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ClassSeven(),
    );
  }
}
