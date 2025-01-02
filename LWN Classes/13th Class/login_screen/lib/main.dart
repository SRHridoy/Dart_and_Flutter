import 'package:flutter/material.dart';
import 'package:login_screen/pages/login_page.dart';

void main(){
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage()
    );
  }
}
