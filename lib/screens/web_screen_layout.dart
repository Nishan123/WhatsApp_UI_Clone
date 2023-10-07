import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/contacts_lists.dart';
import 'package:whatsapp_clone/widgets/web_profile_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
       crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
      Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Web profile bar
              WebProfileBar(),
              //Search bar
              //ContactsLists
              ContactsLists()
            ],
          ),
        ),
      ),
      //Web screen
      Container(
        width: MediaQuery.of(context).size.width*0.75,
        decoration: BoxDecoration(
          image: DecorationImage(image: 
          AssetImage('assets/images/backgroundImage.png'),
          fit: BoxFit.cover,
          )
        ),
      )
        ],
      )
    );
  }
}