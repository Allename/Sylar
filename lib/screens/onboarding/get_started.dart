import 'package:flutter/material.dart';
import 'package:sylar/utils/constants.dart';
import 'package:sylar/widgets/header.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimary,
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            Header(title: 'Get Started', description: 'Welcome to the world of easy transactions'),
          ],
        ),
      ),
    );
  }
}