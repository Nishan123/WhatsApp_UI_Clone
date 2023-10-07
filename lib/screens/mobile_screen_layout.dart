import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants/colors.dart';
import 'package:whatsapp_clone/widgets/contacts_lists.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            
            elevation: 0,
            title: const Text(
              "Whatsapp",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_vert,
                  )),
            ],
            bottom: const TabBar(
                indicatorColor: tabColor,
                indicatorWeight: 4,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.grey,
                labelStyle:
                    TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1),
                tabs: [
                  Tab(
                    text: "Chats",
                  ),
                  Tab(
                    text: "Status",
                  ),
                  Tab(
                    text: "Calls",
                  )
                ]),
          ),
          body: ContactsLists(),
        ));
  }
}
