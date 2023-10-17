import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whatsapp_clone/constants/colors.dart';
import 'package:whatsapp_clone/features/auth/controller/auth_controller.dart';

class OtpScreen extends ConsumerWidget {
  static const String routeName = '/otp-screen';
  final String verificationId;
  const OtpScreen({super.key, required this.verificationId});
  void verifyOTP(WidgetRef ref, BuildContext context, String userOTP,) {
    ref
        .read(authControllerProvider)
        .verifyOTP(context, verificationId, userOTP);
        
  }
  

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Verifying your number"),
        backgroundColor: backgroundColor,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Text("We have sent an SMS with a code"),
              SizedBox(
                width: size.width * 0.6,
                child:  TextField(
                  onChanged: (val) {
                    if (val.length == 6) {
                      verifyOTP(ref, context, val.trim());
                    }
                  },
                  style: const TextStyle(letterSpacing: 8),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "_ _ _ _ _ _",
                    hintStyle: TextStyle(fontSize: 30),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
