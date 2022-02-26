import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String title;
  final String description;
  const Header({ Key? key, required this.title, required this.description }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget> [
          
        ],
      ),
    );
  }
}