import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_part_01/home_page.dart';

void main(){
  runApp(GetXIntro());
}
//Started GetX and build normal counter app using it...
class GetXIntro extends StatelessWidget {
  const GetXIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
