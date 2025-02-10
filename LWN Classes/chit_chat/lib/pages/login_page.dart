import 'package:chit_chat/consts.dart';
import 'package:chit_chat/services/auth_service.dart';
import 'package:chit_chat/widgets/custom_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GetIt _getIt = GetIt.instance;
  final GlobalKey<FormState> _loginFormKey = GlobalKey();

  late AuthService _authService;

  String? email,password;

  @override
  void initState() {
    super.initState();
    _authService = _getIt.get<AuthService>();
  }
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
      child: Form(
        key: _loginFormKey,
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
              validationRegEx: emailRegex,
              hintText: "Enter your email",
              onSaved: (value) {
                setState(() {
                  email = value;
                });
              },
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
              validationRegEx: passwordRegex,
              hintText: "Enter your password",
              isPasswordField: true,
              onSaved: (value) {
                setState(() {
                  password = value;
                });
              },
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width,
              child: MaterialButton(
                padding: EdgeInsets.symmetric(vertical: 12),
                color: Theme.of(context).colorScheme.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)
                ),
                onPressed: () async{
                  if(_loginFormKey.currentState?.validate()??false){
                    _loginFormKey.currentState?.save();
                    bool result = await _authService.login(email!, password!);
                    print(result);
                    if(result){}else{

                    }
                  }
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            _createAnAccountLink()
          ],
        ),
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
  Widget _createAnAccountLink(){
    return Expanded(child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text("Don't have an account?  "),
        Text("Sign Up",style: TextStyle(fontWeight: FontWeight.w800),)
      ],
    ));
  }
}
