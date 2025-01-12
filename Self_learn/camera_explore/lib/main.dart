import 'package:camera_explore/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CameraApp());
}

class CameraApp extends StatelessWidget {
  const CameraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
