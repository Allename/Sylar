import 'package:flutter/material.dart';
import 'package:sylar/utils/constants.dart';

class Items extends StatelessWidget {
  const Items({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget> [
          Container(
            width: 50,
            height: 50,
            color: kSecondary,
            child: const Center(
              child: Image(
                image: AssetImage('assets/images/gift.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}