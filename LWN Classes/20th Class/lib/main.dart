import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:regi_login_using_get_storage/dashboard_page.dart';
import 'package:regi_login_using_get_storage/home_page.dart';
import 'package:regi_login_using_get_storage/storage_utils.dart';

void main()async{
  await GetStorage.init();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StorageUtils.isFirstTimeRegister()?DashboardPage():HomePage(),
    );
  }
}
