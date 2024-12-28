import 'package:assignment_10/pages/home.dart';
import 'package:assignment_10/pages/chats.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Assignment10());
}

class Assignment10 extends StatelessWidget {
  const Assignment10({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
