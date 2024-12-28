import 'package:flutter/material.dart';

class Stories extends StatefulWidget {
  const Stories({super.key});

  @override
  State<Stories> createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
  List<String> images = [
    'assets/images/code01.jpg',
    'assets/images/code02.jpg',
    'assets/images/code03.jpg',
    'assets/images/code04.jpg',
    'assets/images/code05.jpg',
    'assets/images/code06.jpg',
    'assets/images/code07.jpg',
    'assets/images/code08.jpg',
    'assets/images/code09.jpg',
    'assets/images/code10.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x00000000),
      body: GridView.builder(
        itemCount: images.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Card(
            color: Colors.black,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                images[index],
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
