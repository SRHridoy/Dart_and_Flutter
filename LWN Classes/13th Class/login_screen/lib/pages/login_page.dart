import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                color: Colors.purpleAccent,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 70,
                  ),
                  Image.asset(
                    'assets/images/profile.png',
                    height: 100,
                    width: 100,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Login'.toUpperCase(),
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                      color: Colors.purpleAccent[100],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.email_outlined),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 12,horizontal: 6),
                        hintText: 'Username',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width,

                    decoration: BoxDecoration(
                      color: Colors.purpleAccent[100],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.remove_red_eye_rounded),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 12,horizontal: 6),
                        hintText: 'Password',
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text('Forget Password?'),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purple),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Divider(
                        color: Colors.purpleAccent,
                      )),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: Text('Or Login'),
                      ),
                      Expanded(
                          child: Divider(
                        color: Colors.purpleAccent,
                      )),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Card(
                    child: ListTile(
                      leading: Image.asset(
                        'assets/images/google.png',
                        height: 25,
                        width: 25,
                      ),
                      title: Text('Sign in With Google'),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Card(
                    child: ListTile(
                      leading: Image.asset(
                        'assets/images/facebook.png',
                        height: 25,
                        width: 25,
                      ),
                      title: Text('Sign in With Facebook'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
