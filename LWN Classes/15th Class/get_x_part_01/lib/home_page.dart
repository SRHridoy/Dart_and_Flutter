import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_part_01/home_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  //Getx object:
  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: GetBuilder<HomeController>(
        builder: (_) {
          return Center(
              child: Text(
            homeController.number.toString(),
            style: TextStyle(fontSize: 30),
          ));
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        homeController.incrementNumber();

      },shape:BeveledRectangleBorder(),
      child: Icon(Icons.add),),
    );
  }
}
