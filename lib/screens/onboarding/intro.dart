import 'package:flutter/material.dart';

class Intro extends StatelessWidget {
  const Intro({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10.0),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            const Image(image: AssetImage('assets/images/Image.png')),
            const SizedBox(height: 35.0),
            Container(
              height: 120,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/Title.png'),
                  fit: BoxFit.contain,
                ),
              ),
              child: const Center(
                child: Text(
                  'Your personal bank',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Column(
              children: <Widget> [
                Row(
                  children: const <Widget> [
                    CircleAvatar(
                      radius: 20.5,
                      backgroundImage: AssetImage('assets/images/cash.png'),
                    ),
                    Text(
                      '',
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}