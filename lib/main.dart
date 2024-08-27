import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:food_order/pages/onBoard.dart';
import 'package:food_order/widget/app_constant.dart';

void main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    Stripe.publishableKey = publishableKey;
    await Firebase.initializeApp();
  } catch (e) {
    print(e);
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(body: SafeArea(child: Onboard())),
    );
  }
}
