import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sylar/utils/constants.dart';
import 'package:sylar/widgets/button.dart';
import 'package:sylar/widgets/header.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimary,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
             const Header(title: 'Get Started', description: 'Welcome to the world of easy transactions',),
             const SizedBox(height: 32.0),
             Container(
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget> [
                   const Text(
                     'Full name',
                     style: TextStyle(
                       fontSize: 14,
                       fontWeight: FontWeight.w400,
                     ),
                   ),
                   const SizedBox(height: 10.0),
                    const TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Full name',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 24.0),
                    const Text(
                      'Phone number',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    TextField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      decoration: const InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Your phone number',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 24.0),
                    const Text(
                      'Email',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    const TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'you@example.com',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 24.0),
                    const Text(
                      'Password',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    const TextField(
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Minimun of 8 characters',
                        border: OutlineInputBorder(),
                      ),
                    ),
                 ],
               ),
             ),
             const SizedBox(height: 83.0),
             const Text(
               'By continuing, you agree to the Privacy Policy and Terms and Conditions',
               style: TextStyle(
                 fontSize: 14,
                 fontWeight: FontWeight.w400,
               ),
             ),
              const SizedBox(height: 16.0),
              Button(text: 'Get Started', press: () {}),
            ],
          ),
        ),
      ),
    );
  }
}






