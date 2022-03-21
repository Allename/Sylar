import 'package:flutter/material.dart';
import 'package:sylar/screens/homescreen/widgets/items.dart';
import 'package:sylar/screens/homescreen/widgets/savings_plan.dart';
import 'package:sylar/screens/homescreen/widgets/transact_button.dart';
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
            crossAxisAlignment: CrossAxisAlignment.start,
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
              const SizedBox(height: 16.0),
              const TransactButton(),
              const SizedBox(height: 32.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget> [
                    Text(
                      'Explore',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 21.0),
                    Items(image: 'assets/images/gift.png', text: 'Airtime recharge'),
                    Items(image: 'assets/images/film.png', text: 'Movie Tickets'),
                    Items(image: 'assets/images/game.png', text: 'Cable Subscription'),
                    Items(image: 'assets/images/cash.png', text: 'Bills'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  <Widget> [
                    const SizedBox(height: 20.0),
                    const SizedBox(
                      width: double.infinity,
                      child: Image(
                        image: AssetImage('assets/images/banner.png'),
                      ),
                    ),
                    const SizedBox(height: 32.0),
                    const Text(
                      'Savings Plan',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const <Widget> [
                          SavingsPlan(image: 'assets/images/EscapeSapa.png', title: 'Escape Sapa', price: 'NGN 2,000/wk'),
                          SavingsPlan(image: 'assets/images/RichClub.png', title: 'Rich Club', price: 'NGN 100,000/wk'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}