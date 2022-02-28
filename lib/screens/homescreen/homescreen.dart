import 'package:flutter/material.dart';
import 'package:sylar/screens/homescreen/widgets/wallet_balance.dart';
import 'package:sylar/utils/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kGray,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget> [
              Stack(
                children: <Widget> [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 148,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/Stack.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: const WalletBalance(text: 'Wallet Balance', price: 'NGN 0.00'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}