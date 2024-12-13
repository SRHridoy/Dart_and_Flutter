import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text('Home Page'),
        centerTitle: true,
        actions: [
          Icon(Icons.search),
          Icon(Icons.notifications),
        ],
      ),
      body: Center(
        child: Text(
          number.toString(),
          style: TextStyle(fontSize: 50),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          number++;
          setState(() {
            
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
