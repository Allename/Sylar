import 'package:flutter/material.dart';
import 'package:sylar/utils/constants.dart';

class Items extends StatelessWidget {
  final String image;
  final String text;
  const Items({ Key? key, required this.image, required this.text }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget> [
          Container(
            width: 50,
            height: 50,
            color: kSecondary,
            child: Center(
              child: Image.asset(image),
            ),
          ),
        ],
      ),
    );
  }
}