import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whatsapp_clone/common/utils/utility.dart';
import 'package:whatsapp_clone/common/widgets/custom_button.dart';
import 'package:whatsapp_clone/constants/colors.dart';
import 'package:whatsapp_clone/features/auth/controller/auth_controller.dart';

class LoginScreen extends ConsumerStatefulWidget {
  static const routeName = '/login-screen';
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final phoneController = TextEditingController();
  Country? country;
  @override
  void dispose() {
    super.dispose();
    phoneController.dispose();
  }

  void pickCountry() {
    showCountryPicker(
        context: context,
        countryListTheme: const CountryListThemeData(
            bottomSheetHeight: 500,
            borderRadius: BorderRadius.zero,
            inputDecoration: InputDecoration(
              hintText: "Search",
              labelText: null,
              prefixIcon: Icon(Icons.search), 
            )),
        onSelect: (Country _country) {
          setState(() {
            country = _country;
          });
        });
  }

  void sendPhoneNumber() {
    String phoneNumber = phoneController.text.trim();
    if (country != null && phoneNumber.isNotEmpty) {
      ref
          .read(authControllerProvider)
          .signInWithPhone(context, '+${country!.phoneCode}$phoneNumber');
    } else {
      showSnackBar(context: context, content: 'Fill Out All the filds');
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Enter your phone number"),
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
                    child:
                        Text("WhatsApp will need to verify your phone number"),
                  ),
                  TextButton(
                      onPressed: pickCountry,
                      child: const Text("Pick a country")),
                  Row(
                    children: [
                      if (country != null) Text('+${country!.phoneCode}'),
                      const SizedBox(width: 10),
                      SizedBox(
                        width: size.width * 0.8,
                        child: TextField(
                          controller: phoneController,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            hintText: "phone number",
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(left: 75, right: 75),
                    child: CustomButton(
                      radius: 8,
                      text: "NEXT",
                      bgColor: Colors.grey,
                      onTap: sendPhoneNumber,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
