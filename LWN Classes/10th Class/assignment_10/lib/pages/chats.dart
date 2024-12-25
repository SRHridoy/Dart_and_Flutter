import 'package:assignment_10/pages/calls.dart';
import 'package:assignment_10/pages/updates.dart';
import 'package:assignment_10/widgets/drawer_widgets.dart';
import 'package:flutter/material.dart';

import '../models/messages_model.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    List<MessagesModel> demoMessages = [
      MessagesModel(
          name: "Alice", lastMessage: "See you tomorrow!", time: "10:30 AM"),
      MessagesModel(
          name: "Bob",
          lastMessage: "Can you send me the report?",
          time: "9:15 AM"),
      MessagesModel(
          name: "Charlie",
          lastMessage: "Thanks for your help!",
          time: "8:50 AM"),
      MessagesModel(
          name: "Diana",
          lastMessage: "I'll call you later.",
          time: "Yesterday"),
      MessagesModel(
          name: "Ethan",
          lastMessage: "Meeting is scheduled for 3 PM.",
          time: "Yesterday"),
      MessagesModel(
          name: "Fiona", lastMessage: "Let's catch up soon!", time: "Monday"),
      MessagesModel(
          name: "George", lastMessage: "Happy Birthday!", time: "Sunday"),
      MessagesModel(
          name: "Hannah",
          lastMessage: "Can we reschedule our meeting?",
          time: "Saturday"),
      MessagesModel(
          name: "Ivan",
          lastMessage: "Got the tickets for the concert!",
          time: "Friday"),
      MessagesModel(name: "Jane", lastMessage: "Good night!", time: "Thursday"),
      MessagesModel(
          name: "Alice", lastMessage: "See you tomorrow!", time: "10:30 AM"),
      MessagesModel(
          name: "Bob",
          lastMessage: "Can you send me the report?",
          time: "9:15 AM"),
      MessagesModel(
          name: "Charlie",
          lastMessage: "Thanks for your help!",
          time: "8:50 AM"),
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemCount: demoMessages.length,
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
                demoMessages[index].name,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              subtitle: Text(
                demoMessages[index].lastMessage,
                style: TextStyle(fontSize: 18),
              ),
              trailing: Text(
                demoMessages[index].time,
                style: TextStyle(fontSize: 15),
              ),
            ),
          );
        },
      ),
    );
  }
}
