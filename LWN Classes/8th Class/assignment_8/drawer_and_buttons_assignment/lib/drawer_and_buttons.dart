
import 'package:flutter/material.dart';

class DrawerAndButtons extends StatefulWidget {
  const DrawerAndButtons({super.key});

  @override
  State<DrawerAndButtons> createState() => _DrawerAndButtonsState();
}

class _DrawerAndButtonsState extends State<DrawerAndButtons> {
  var list = ['Drop', 'Down', 'Menu', 'Button'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Drawer and Button',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.green[500],
      ),
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const ContinuousRectangleBorder(),
                  padding: const EdgeInsets.all(20),
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {},
                child: const Text('Elevated Button')),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white),
                onPressed: () {},
                icon: const Icon(Icons.smart_button_rounded),
                label: const Text('Elevated Icon Button')),
            const SizedBox(
              height: 20,
            ),
            TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(20),
                ),
                onPressed: () {},
                child: const Text(
                  'Text Button',
                  style: TextStyle(color: Colors.blue),
                )),
            const SizedBox(
              height: 20,
            ),
            TextButton.icon(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(20),
                ),
                onPressed: () {},
                icon: const Icon(Icons.telegram),
                label: const Text('Text icon Button')),
            const SizedBox(
              height: 20,
            ),
            OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: const StadiumBorder(),
                  padding: const EdgeInsets.all(20),
                ),
                onPressed: () {},
                child: const Text('Outlined Button')),
            const SizedBox(
              height: 20,
            ),
            OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                    shape: LinearBorder.bottom()),
                onPressed: () {},
                icon: const Icon(Icons.bus_alert_outlined),
                label: const Text('Outlined Icon Button')),
            const SizedBox(
              height: 20,
            ),
            FloatingActionButton(
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              onPressed: () {},
              backgroundColor: Colors.pink,
              child: const Icon(Icons.add_box_outlined),
            ),
            const SizedBox(
              height: 20,
            ),
            FilledButton(
                style:
                    FilledButton.styleFrom(padding: const EdgeInsets.all(20)),
                onPressed: () {},
                child: const Text('Filled Button'))
          ],
        ),
      ),
      drawer: Drawer(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 150,
              decoration: BoxDecoration(color: Colors.green[500]),
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
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
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
              onTap: () {},
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
              onTap: () {},
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
              onTap: () {},
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
              onTap: () {},
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
              onTap: () {},
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
              onTap: () {},
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
              onTap: () {},
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
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
