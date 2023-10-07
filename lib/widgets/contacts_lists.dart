import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants/colors.dart';
import 'package:whatsapp_clone/constants/info.dart';

class ContactsLists extends StatelessWidget {
  const ContactsLists({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          NetworkImage(info[index]['profilePic'].toString()),
                    ),
                    title: Text(
                      info[index]['name'].toString(),
                      style: const TextStyle(fontSize: 18),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Text(
                        info[index]['message'].toString(),
                        style: const TextStyle(fontSize: 15),
                      ),
                    ),
                    trailing: Text(
                      info[index]['time'].toString(),
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                ),
              ),
              const Divider(
                color: dividerColor,
                indent: 85,
              )
            ],
          );
        },
        itemCount: info.length,
      ),
    );
  }
}
