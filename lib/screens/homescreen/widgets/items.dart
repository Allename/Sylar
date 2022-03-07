import 'package:flutter/material.dart';
import 'package:sylar/utils/constants.dart';

class Items extends StatelessWidget {
  final String image;
  final String text;
  const Items({ Key? key, required this.image, required this.text }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget> [
        Container(
          width: 50,
          height: 50,
          color: kSecondary,
          child: Center(
            child: Image.asset(image),
          ),
        ),
        Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        const Icon(Icons.arrow_forward_ios_sharp),
      ],
    );
  }
}