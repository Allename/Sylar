import 'package:flutter/material.dart';
import 'package:sylar/utils/constants.dart';

class WalletBalance extends StatelessWidget {
  final String text;
  final String price;
  const WalletBalance({ Key? key, required this.text, required this.price }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget> [
          Text(
            text,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: kSecondary,
            ),
          ),
          const SizedBox(height: 9.0),
        ],
      ),
    );
  }
}