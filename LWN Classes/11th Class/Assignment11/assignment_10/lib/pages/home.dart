import 'package:flutter/material.dart';

import '../widgets/drawer_widgets.dart';
import 'calls.dart';
import 'chats.dart';
import 'stories.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> pages = [Chats(), Stories(), CallsPage()];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black54,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'AlapSalap',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(
            Icons.camera_alt_outlined,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.more_vert,
            color: Colors.white,
          )
        ],
      ),
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black87,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.greenAccent,
          currentIndex: selectedIndex,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat_sharp,
                ),
                label: 'Chats'),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.amp_stories,
              ),
              label: 'Stories',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.call_outlined,
              ),
              label: 'Calls',
            ),
          ]),
      drawer: Drawer(
        backgroundColor: Colors.grey[600],
        child: DrawerWidgets(),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: Icon(
          Icons.add_box,
          color: Colors.black,
        ),
      ),
    );
  }
}
