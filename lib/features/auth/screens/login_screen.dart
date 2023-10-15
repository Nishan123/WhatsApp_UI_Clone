import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/widgets/custom_button.dart';
import 'package:whatsapp_clone/constants/colors.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login-screen';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final phoneController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    phoneController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text("Enter your phone number"),
        backgroundColor: backgroundColor,
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 13),
                  child: Text("WhatsApp will need to verify your phone number"),
                ),
                TextButton(
                    onPressed: () {}, child: const Text("Pick a country")),
                Row(
                  children: [
                    Text('+977'),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: size.width * 0.7,
                      child: TextField(
                        controller: phoneController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(hintText: "phone number"),
                      ),
                    ),
                  ],
                ),
               const Spacer(),
               Padding(
                 padding: const EdgeInsets.only(left: 75,right: 75),
                 child: CustomButton(radius: 8, text:"NEXT", bgColor: Colors.blue, onTap: (){}),
               )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
