import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants/colors.dart';

class WebProfileBar extends StatelessWidget {
  const WebProfileBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.078,
      width: MediaQuery.of(context).size.width * 0.25,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          border: Border(
            right: BorderSide(color: webAppBarColor),
          ),
          color: webAppBarColor),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1619194617062-5a61b9c6a049?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60'),
          ),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.people_rounded,
                color: Colors.grey,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert_rounded,
                color: Colors.grey,
              )),
        
    
        ],
      ),
    );
  }
}
