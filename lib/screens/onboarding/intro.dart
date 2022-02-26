import 'package:flutter/material.dart';
import 'package:sylar/widgets/button.dart';

class Intro extends StatelessWidget {
  const Intro({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16.0),
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
            SizedBox(height: 60.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
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
                SizedBox(height: 40.0),
                Row(
                  children: const <Widget> [
                    CircleAvatar(
                      radius: 20.5,
                      backgroundImage: AssetImage('assets/images/lock.png'),
                    ),
                    Text(
                      '',
                    ),
                  ],
                ),
              ],
            ),
            Button(text: 'Get Started', press: () {}),
          ],
        ),
      ),
    );
  }
}