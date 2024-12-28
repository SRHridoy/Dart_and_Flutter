import 'package:flutter/material.dart';
import 'package:whatsapp_ui/pages/home_page/tab_views/calls_tab.dart';
import 'package:whatsapp_ui/pages/home_page/tab_views/chats_tab.dart';
import 'package:whatsapp_ui/pages/home_page/tab_views/community.dart';
import 'package:whatsapp_ui/pages/home_page/tab_views/updates_tab.dart';
import 'package:whatsapp_ui/utils/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primaryColor,
          title: Text(
            'WhatsApp',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.camera_alt_outlined,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search_rounded),
              color: Colors.white,
            ),
            // IconButton(
            //   onPressed: () {},
            //   icon: Icon(
            //     Icons.more_vert,
            //     color: Colors.white,
            //   ),
            // ),

            PopupMenuButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    child: Text('New Group'),
                  ),
                  PopupMenuItem(child: Text('New broadcast')),
                  PopupMenuItem(child: Text('Linked Device')),
                  PopupMenuItem(child: Text('Starred messages')),
                  PopupMenuItem(child: Text('Settings')),
                ];
              },
            )
          ],
          bottom: TabBar(
              labelColor: Colors.white,
              labelStyle: TextStyle(fontWeight: FontWeight.w700),
              unselectedLabelColor: Colors.white54,
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Tab(
                  icon: Icon(Icons.groups),
                ),
                Tab(
                  text: 'Chats',
                ),
                Tab(
                  text: 'Updates',
                ),
                Tab(
                  text: 'Calls',
                ),
              ]),
        ),
        body: TabBarView(
            children: [CommunityTab(), ChatsTab(), UpdatesTab(), CallsTab()]),
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColors.primaryColor,
          //elevation: 0,
          onPressed: () {},
          child: Icon(
            Icons.message,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
