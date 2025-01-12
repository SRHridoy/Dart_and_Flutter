import 'package:flutter/material.dart';
import 'package:responsive_railway_bd/pages/home_page.dart';

class PopupButton extends StatelessWidget {
  PopupButton({super.key});

  List<String> listOfItems = [
    'home',
    'login',
    'register',
    'train information',
    'contact us'
  ];

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: Icon(
        Icons.menu_sharp,
        color: Color(0XFF089d49),
      ),
      color: Color(0XFF089d49),

      itemBuilder: (context) {
        return [
          PopupMenuItem(child: Text(listOfItems[0].toUpperCase(),style: TextStyle(color: Colors.white),)),
          PopupMenuItem(child: Text(listOfItems[1].toUpperCase(),style: TextStyle(color: Colors.white),)),
          PopupMenuItem(child: Text(listOfItems[2].toUpperCase(),style: TextStyle(color: Colors.white),)),
          PopupMenuItem(child: Text(listOfItems[3].toUpperCase(),style: TextStyle(color: Colors.white),)),
          PopupMenuItem(child: Text(listOfItems[4].toUpperCase(),style: TextStyle(color: Colors.white),)),
        ];
      },
    );
  }
}
