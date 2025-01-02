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
        backgroundColor: Colors.deepOrange,
        title: Text('Counter App Using GetX',style: TextStyle(color: Colors.white),),
      ),
      body: GetBuilder<HomeController>(
        builder: (_) {
          return Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            color: Colors.orangeAccent[100],
            child: Center(
                child: Text(
              homeController.number.toString(),
              style: TextStyle(fontSize: 30),
            )),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        homeController.incrementNumber();
      },shape:CircleBorder(),
      child: Icon(Icons.add,color: Colors.white,),backgroundColor: Colors.deepOrange,),
    );
  }
}
