import 'package:flutter/material.dart';
import 'package:sylar/screens/onboarding/get_started.dart';
import 'package:sylar/utils/constants.dart';
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
            SizedBox(height: 10.0),
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
                    SizedBox(width: 20.0),
                    Flexible(
                      child: Text(
                        'Send money to friends and family saved on your device',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
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
                    SizedBox(width: 20.0),
                    Flexible(
                      child: Text(
                        'Save your money and prevent sapa in the future',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 239.0),
            Button(text: 'Get Started', press: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const GetStarted()))),
            SizedBox(height: 20.0),
            GestureDetector(
              onTap: () {},
              child: const Text(
                'Login',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: kPrimary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}