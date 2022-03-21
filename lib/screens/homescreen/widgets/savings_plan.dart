import 'package:flutter/material.dart';
import 'package:sylar/utils/constants.dart';

class SavingsPlan extends StatelessWidget {
  final String image;
  final String title;
  final String price;
  const SavingsPlan(
      {Key? key, required this.image, required this.title, required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              width: 159,
              height: 97,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          price,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: kGray2,
          ),
        ),
      ],
    );
  }
}
