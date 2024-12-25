import 'package:flutter/material.dart';

class DrawerWidgets extends StatelessWidget {
  const DrawerWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width,
          height: 150,
          decoration: BoxDecoration(color: Colors.black87),
          child: const Column(
            children: [
              SizedBox(
                height: 10,
              ),
              CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person_2,
                    color: Colors.black,
                    size: 30,
                  )),
              SizedBox(
                height: 10,
              ),
              Text(
                'Md. Sohanur Rahman Hridoy',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                'Flutter Developer!',
                style: TextStyle(color: Colors.white70),
              ),
            ],
          ),
        ),
        ListTile(
          leading: const Icon(
            Icons.space_dashboard_outlined,
            color: Colors.black,
          ),
          title: const Text(
            'Dashboard',
            style: TextStyle(fontWeight: FontWeight.normal),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.perm_contact_calendar_outlined,
            color: Colors.black,
          ),
          title: const Text(
            'Contacts',
            style: TextStyle(fontWeight: FontWeight.normal),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.event_available,
            color: Colors.black,
          ),
          title: const Text(
            'Events',
            style: TextStyle(fontWeight: FontWeight.normal),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.notes,
            color: Colors.black,
          ),
          title: const Text(
            'Notes',
            style: TextStyle(fontWeight: FontWeight.normal),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.settings,
            color: Colors.black,
          ),
          title: const Text(
            'Settings',
            style: TextStyle(fontWeight: FontWeight.normal),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.notifications,
            color: Colors.amber,
          ),
          title: const Text(
            'Notifications',
            style: TextStyle(fontWeight: FontWeight.normal),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.privacy_tip,
            color: Colors.black,
          ),
          title: const Text(
            'Privacy Policy',
            style: TextStyle(fontWeight: FontWeight.normal),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.feedback,
            color: Colors.black,
          ),
          title: const Text(
            'Send Feedback',
            style: TextStyle(fontWeight: FontWeight.normal),
          ),
          trailing: const Icon(
            Icons.send,
            color: Colors.blue,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
