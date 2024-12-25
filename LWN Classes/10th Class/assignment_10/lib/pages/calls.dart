import 'package:flutter/material.dart';

import '../models/calls_model.dart';

class CallsPage extends StatefulWidget {
  const CallsPage({super.key});

  @override
  State<CallsPage> createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {
  List<CallsModel> demoCalls = [
    CallsModel(name: "John Doe", time: "10:30 AM"),
    CallsModel(name: "Emma Watson", time: "11:15 AM"),
    CallsModel(name: "William Brown", time: "12:00 PM"),
    CallsModel(name: "Mason Davis", time: "06:10 PM"),
    CallsModel(name: "Sophia Johnson", time: "01:45 PM"),
    CallsModel(name: "Liam Smith", time: "03:30 PM"),
    CallsModel(name: "Olivia Martinez", time: "04:20 PM"),
    CallsModel(name: "Sophia Johnson", time: "01:45 PM"),
    CallsModel(name: "Liam Smith", time: "03:30 PM"),
    CallsModel(name: "Olivia Martinez", time: "04:20 PM"),
    CallsModel(name: "Ava Wilson", time: "07:25 PM"),
    CallsModel(name: "James Anderson", time: "08:50 PM"),
    CallsModel(name: "Isabella Garcia", time: "09:15 PM"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemCount: demoCalls.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.black,
            child: ListTile(
              leading: CircleAvatar(
                radius: 40,
                child: Icon(
                  Icons.person,
                  size: 35,
                ),
              ),
              title: Text(
                demoCalls[index].name,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              subtitle: Text(
                demoCalls[index].time,
                style: TextStyle(fontSize: 18),
              ),
            ),
          );
        },
      ),
    );
  }
}
