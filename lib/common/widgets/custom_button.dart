import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double radius;
  final String text;
  final Color bgColor;
  final VoidCallback onTap;

  const CustomButton(
      {super.key,
      required this.radius,
      required this.text,
      required this.bgColor,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:30),
      child: InkWell(
        splashColor: Colors.white,
        onTap: onTap,
        child: Container(
        height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius),
              color: bgColor
              ),
          child: Center(
            child: Text(text,style: TextStyle(color: Colors.black),),
          ),
        ),
      ),
    );
  }
}
