import 'package:chit_chat/widgets/custom_form_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: _buildUI(),
    );
  }

  Widget _buildUI() {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _headingDesign(),
          SizedBox(
            height: 50,
          ),
          _welcomeText(),
          SizedBox(
            height: 20,
          ),
          Text(
            'Email',
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: 10,
          ),
          CustomFormField(
            hintText: "Enter your email",
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Password',
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: 10,
          ),
          CustomFormField(
            hintText: "Enter your password",
            isPasswordField: true,
          ),
          SizedBox(height: 20,),
          MaterialButton(onPressed: () {
            
          },child: Text('Login'),)
        ],
      ),
    ));
  }

  Widget _headingDesign() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/icon.png',
          width: 50,
        ),
        Text(
          'Chit-Chat',
          style: TextStyle(fontWeight: FontWeight.w600),
        )
      ],
    );
  }

  Widget _welcomeText() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Welcome Back!",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Text(
          "Enter your email and password to access your account",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black87, fontSize: 14),
        )
      ],
    );
  }
}
