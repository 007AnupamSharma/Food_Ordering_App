import 'package:flutter/material.dart';
import 'package:food_order/pages/bottomnav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(body: SafeArea(child: BottomNav())),
    );
  }
}
