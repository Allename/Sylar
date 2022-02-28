import 'package:flutter/material.dart';
import 'package:sylar/utils/constants.dart';

class TransactButton extends StatelessWidget {
  final Color color;
  final VoidCallback press;
  const TransactButton({ Key? key, required this.color, required this.press }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        children: [
          SizedBox(
            width: 160,
            height: 50,
            child: TextButton(
              style: TextButton.styleFrom(
                padding: const  EdgeInsets.symmetric(vertical: 16.0, horizontal: 38.0),
                backgroundColor: color,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
              ),
              onPressed: press,
              child: const Text(
                'Send',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white
                ),
              ),
            ),
          ),
          SizedBox(
            width: 160,
            height: 50,
            child: TextButton(
              style: TextButton.styleFrom(
                
              ),
              onPressed: press,
              child: const Text(
                'Fund wallet',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: kPrimary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}