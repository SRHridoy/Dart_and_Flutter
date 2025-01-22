import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_get_api_integration/home_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get API Integration'),
      ),
    );
  }
}
