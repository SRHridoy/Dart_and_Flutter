import 'package:flutter/material.dart';
import 'package:regi_login_using_get_storage/dashboard_page.dart';
import 'package:regi_login_using_get_storage/storage_utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Color color = Colors.deepPurpleAccent;
  final Color whiteColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color,
        title: Text(
          'Dashboard',
          style: TextStyle(color: whiteColor),

        ),

      ),

      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Profile',style: TextStyle(fontSize: 30),),
            SizedBox(height: 20,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: color),
                onPressed: () {
                  StorageUtils.setRegistrationData(true);
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => DashboardPage(),));
              
            }, child: Text('Logout',style: TextStyle(color: whiteColor),))
          ],
        ),
      ),
    );
  }
}
