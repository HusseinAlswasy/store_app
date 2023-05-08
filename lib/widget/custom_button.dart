import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.text, this.onTap});

  @override
  String text;
  Function()? onTap;
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(10),
        ),
        width: double.infinity,
        height: 60,
        child: Center(
          child: Text(text,style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}
