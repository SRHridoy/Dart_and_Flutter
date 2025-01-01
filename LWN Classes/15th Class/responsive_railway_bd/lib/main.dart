import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_railway_bd/pages/home_page.dart';

void main()=>runApp(ResponsiveRailwayApp());

class ResponsiveRailwayApp extends StatelessWidget {
  const ResponsiveRailwayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomePage(),
        );
      },
    );
  }
}
