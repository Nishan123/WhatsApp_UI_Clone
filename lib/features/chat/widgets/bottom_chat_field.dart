import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants/colors.dart';

class BottomChatField extends StatefulWidget {
  const BottomChatField({
    super.key,
  });

  @override
  State<BottomChatField> createState() => _BottomChatFieldState();
}

class _BottomChatFieldState extends State<BottomChatField> {
  bool isShowSendButtom = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Card(
            elevation: 0,
            color: Color.fromARGB(77, 196, 196, 196),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.emoji_emotions_outlined,
                      color: Colors.white70,
                    )),
                Expanded(
                    child: TextFormField(
                  onChanged: (value) {
                    if (value.isNotEmpty) {
                      setState(() {
                        isShowSendButtom = true;
                      });
                    } else {
                      setState(() {
                        isShowSendButtom = false;
                      });
                    }
                  },
                  style: const TextStyle(color: Colors.white),
                  maxLines: null,
                  onTap: () {},
                  keyboardType: TextInputType.multiline,
                  decoration: const InputDecoration(
                      hintText: "Message",
                      hintStyle: TextStyle(color: Colors.white70, fontSize: 18),
                      border: InputBorder.none),
                )),

                //for multi image picking feature
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.attach_file,
                    color: Colors.white70,
                  ),
                ),

                //for camera image sending feature
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.camera_alt,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Center(
            child: CircleAvatar(
              backgroundColor: Colors.green,
              child: Icon(
                isShowSendButtom ? Icons.send : Icons.mic,
                color: whiteColor,
              ),
            ),
          ),
        )
      ],
    );
  }
}
