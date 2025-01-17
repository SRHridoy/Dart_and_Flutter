import 'package:flutter/material.dart';
import 'package:regi_login_using_get_storage/home_page.dart';
import 'package:regi_login_using_get_storage/storage_utils.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final _key = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool secureText = true;
  final Color color = Colors.deepPurpleAccent;
  final Color whiteColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Registration",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: color,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(15),
          width: MediaQuery.of(context).size.width,
          child: Form(
              key: _key,
              child: Card(
                elevation: 3.0,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: color,
                        child: Icon(
                          Icons.person,
                          color: whiteColor,
                          size: 40,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[300]),
                        child: TextFormField(
                          controller: nameController,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Enter your name",
                              contentPadding: EdgeInsets.only(left: 15)),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Empty Field";
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[300]),
                        child: TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Enter your email",
                              contentPadding: EdgeInsets.only(left: 15)),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Empty Field";
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[300]),
                        child: TextFormField(
                          controller: passwordController,
                          obscureText: secureText,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Enter your password",
                              contentPadding:
                                  EdgeInsets.only(left: 15, top: 10),
                              suffixIcon: InkWell(
                                  onTap: () {
                                    setState(() {
                                      secureText = !secureText;
                                    });
                                  },
                                  child: Icon(
                                    secureText
                                        ? Icons.remove_red_eye
                                        : Icons.remove_red_eye_outlined,
                                    color: color,
                                  ))),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Empty Field";
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,

                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor: color,padding: EdgeInsets.all(4)),
                            onPressed: () {
                            if(_key.currentState!.validate()){
                              _key.currentState!.save();
                              StorageUtils.setRegistrationData(false);
                              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
                            }
                            },
                            child: Text(
                              'Registration',
                              style: TextStyle(color: whiteColor, fontSize: 20),
                            )),
                      ),SizedBox(height: 30,),
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
