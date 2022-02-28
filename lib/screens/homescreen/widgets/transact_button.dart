import 'package:flutter/material.dart';
import 'package:sylar/utils/constants.dart';

class TransactButton extends StatelessWidget {
  const TransactButton({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 160,
              height: 50,
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: const  EdgeInsets.symmetric(vertical: 16.0, horizontal: 38.0),
                  backgroundColor: kPrimary,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                ),
                onPressed: () {},
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
            SizedBox(width: 24.0),
            SizedBox(
              width: 160,
              height: 50,
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 38.0),
                  backgroundColor: kFund,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                ),
                onPressed: () {},
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
      ),
    );
  }
}