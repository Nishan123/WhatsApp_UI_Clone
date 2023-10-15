import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/widgets/custom_button.dart';
import 'package:whatsapp_clone/constants/colors.dart';
import 'package:whatsapp_clone/features/auth/screens/login_screen.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  void navigateToLoginScreen(BuildContext context) {
    Navigator.pushNamed(context, LoginScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Welcome to WhatsApp",
                style: TextStyle(fontSize: 33, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: size.height / 10),
              Image.asset(
                'assets/images/bg.png',
                height: 330,
                width: 330,
                color: tabColor,
              ),
              SizedBox(height: size.height / 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 3),
                child: Text(
                  'Read our Privacy Policy. Tap "Agree and Continue" to accept the Terms of Service.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: grayColor),
                ),
              ),
              SizedBox(height: size.height / 12),
              CustomButton(
                radius: 8,
                text: "AGREE AND CONTINUE",
                bgColor: Colors.grey,
                onTap: () => navigateToLoginScreen(context),
              )
            ],
          ),
        ),
      ),
    );
  }
}
