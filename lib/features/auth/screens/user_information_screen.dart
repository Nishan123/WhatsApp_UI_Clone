import 'dart:io';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/utils/utility.dart';

class UserInformationScreen extends StatefulWidget {
  const UserInformationScreen({super.key});
  static const String routeName = '/user-information';

  @override
  State<UserInformationScreen> createState() => _UserInformationScreenState();
}

class _UserInformationScreenState extends State<UserInformationScreen> {
  final TextEditingController nameController = TextEditingController();
  File? image;

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
  }

  void selectImage() async {
    image = await pickImageFromGallery(context);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('This is user information screen'),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Stack(
              children: [
                image == null
                    ? CircleAvatar(
                        radius: 60,
                        backgroundImage: NetworkImage(
                            'https://i.pinimg.com/564x/20/c0/0f/20c00f0f135c950096a54b7b465e45cc.jpg'),
                      )
                    : CircleAvatar(
                        radius: 70,
                        backgroundImage: FileImage(image!),
                      ),
                Positioned(
                  bottom: -10,
                  left: 80,
                  child: IconButton(
                      onPressed: selectImage, icon: Icon(Icons.add_a_photo)),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: size.width * 0.85,
                  padding: EdgeInsets.all(20),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(hintText: "Enter your name"),
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.done))
              ],
            )
          ],
        ),
      )),
    );
  }
}
