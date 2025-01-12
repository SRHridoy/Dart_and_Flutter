import 'package:date_picker/pages/birthday_home.dart';
import 'package:flutter/material.dart';

void main()=>runApp(BirthdayApp());

class BirthdayApp extends StatelessWidget {
  const BirthdayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BirthdayHome(),
    );
  }
}
