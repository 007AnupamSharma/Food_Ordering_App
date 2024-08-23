import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:food_order/pages/home.dart';
import 'package:food_order/pages/order.dart';
import 'package:food_order/pages/profile.dart';
import 'package:food_order/pages/wallet.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  late List<Widget> pages;
  // late Widget currentPage;
  int currentTapPage = 0;
  late Home homepage;
  late Profile profile;
  late Order order;
  late Wallet wallet;
  double bottomNavBarHeight = 0.0;

  @override
  void initState() {
    // TODO: implement initState
    homepage = Home();
    profile = Profile();
    order = Order();
    wallet = Wallet();
    pages = [homepage, order, wallet, profile];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 50,
        backgroundColor: Colors.white,
        color: Colors.black,
        animationDuration: Duration(milliseconds: 500),
        items: <Widget>[
          Icon(Icons.home_outlined, color: Colors.white, size: 30),
          Icon(Icons.shopping_bag_outlined, color: Colors.white, size: 30),
          Icon(Icons.wallet_outlined, color: Colors.white, size: 30),
          Icon(Icons.person_outline, color: Colors.white, size: 30),
        ],
        onTap: (int index) {
          setState(() {
            currentTapPage = index;
          });
        },
      ),
      body: pages[currentTapPage],
    );
  }
}
