import 'package:flutter/material.dart';
import 'package:sylar/utils/constants.dart';

class Button extends StatelessWidget {
  final String text;
  final VoidCallback press;
  const Button({ Key? key, required this.text, required this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 20.0),
          backgroundColor: kPrimary,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
        ),
        onPressed: press,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}