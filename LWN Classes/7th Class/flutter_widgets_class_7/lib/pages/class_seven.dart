import 'dart:math';

import 'package:flutter/material.dart';

class ClassSeven extends StatefulWidget {
  const ClassSeven({super.key});

  @override
  State<ClassSeven> createState() => _ClassSevenState();
}

class _ClassSevenState extends State<ClassSeven> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(title: const Text('Class 7')),
        // body: Container(
        //     // height: 100,
        //     // width: 100,
        //     height: size.height * .5,
        //     width: size.width * .5,
        //     decoration: const BoxDecoration(
        //       borderRadius: BorderRadius.only(
        //           topRight: Radius.circular(50), bottomLeft: Radius.circular(50)),
        //       color: Colors.green,
        //     ),
        //     child: const Center(
        //       child: Text(
        //         'Container',
        //         style: TextStyle(color: Colors.white),
        //       ),
        //     )),

        // body: Container(
        //   width: size.width,
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     crossAxisAlignment: CrossAxisAlignment.center,
        //     children: [
        //       Container(
        //         width: size.width * .5,
        //         height: 100,
        //         color: Colors.amber,
        //       ),
        //       SizedBox(
        //         height: 10,
        //       ),
        //       Container(
        //         width: size.width * .5,
        //         height: 100,
        //         color: Colors.orange,
        //       ),
        //       SizedBox(
        //         height: 10,
        //       ),
        //       Container(
        //         width: size.width * .5,
        //         height: 100,
        //         color: Colors.purple,
        //       ),
        //       SizedBox(
        //         height: 10,
        //       ),
        //       Container(
        //         width: size.width * .5,
        //         height: 100,
        //         color: Colors.blue,
        //       ),
        //       SizedBox(
        //         height: 10,
        //       ),
        //     ],
        //   ),
        // ),

        // body: Container(
        //   height: size.height,
        //   child: SingleChildScrollView(
        //     scrollDirection: Axis.horizontal,
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //       crossAxisAlignment: CrossAxisAlignment.center,
        //       children: [
        //         Container(
        //           height: 100,
        //           width: 100,
        //           color: Colors.red,
        //         ),
        //         Container(
        //           height: 100,
        //           width: 100,
        //           color: Colors.orange,
        //         ),
        //         Container(
        //           height: 100,
        //           width: 100,
        //           color: Colors.yellow,
        //         ),
        //         Container(
        //           height: 100,
        //           width: 100,
        //           color: Colors.deepOrange,
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        body: Container(
            height: size.height,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 100,
                    //width: 100,
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 100,
                    //width: 100,
                    color: Colors.orange,
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.green,
                      height: 100,
                    ))
              ],
            )));
  }
}
