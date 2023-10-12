import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants/colors.dart';
import 'package:whatsapp_clone/constants/info.dart';

class WebChatAppBar extends StatelessWidget {
  const WebChatAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.75,
      color: webAppBarColor,
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
         const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/620074/pexels-photo-620074.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
            radius: 28,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.01,
          ),
          Text( 
            info[1]['name'].toString(),
            style: const TextStyle(fontSize: 18),
          ),
         const Spacer(),
          IconButton(onPressed: (){}, icon: const Icon(Icons.search,size: 25,color: Colors.grey,)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert_rounded,size: 25,color: Colors.grey,))

        ],
      ),
    );
  }
}
