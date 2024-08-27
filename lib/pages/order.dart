import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:food_order/service/database.dart';
import 'package:food_order/service/shared_pref.dart';
import 'package:food_order/widget/widget_support.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  String? id, wallet;
  int total = 0, amount2 = 0;

  Timer? _timer;

  void startTimer() {
    _timer = Timer(Duration(seconds: 2), () {
      if (mounted) {
        setState(() {
          amount2 = total;
        });
      }
    });
  }

  getsharedpref() async {
    id = await SharedPreferenceHelper().getUserId();
    wallet = await SharedPreferenceHelper().getUserWallet();
    FoodItemStream = await DatabaseMethods().getFoodCart(id!);
    setState(() {});
  }

  ontheload() async {
    await getsharedpref();
  }

  @override
  void initState() {
    ontheload();
    startTimer();
    super.initState();
  }

  Stream? FoodItemStream;

  Widget FoodCart() {
    return StreamBuilder(
        stream: FoodItemStream,
        builder: (context, AsyncSnapshot snapshot) {
          return snapshot.hasData
              ? ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: snapshot.data.docs.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    DocumentSnapshot ds = snapshot.data.docs[index];
                    total = total +
                        (int.parse(ds["Total"]) * int.parse(ds["Quantity"]));
                    return Container(
                      margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Container(
                                height: 90,
                                width: 40,
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(child: Text(ds["Quantity"])),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(60.0),
                                child: Image.network(
                                  ds["Image"],
                                  height: 90,
                                  width: 90,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Column(
                                children: [
                                  Text(
                                    ds["Name"],
                                    style: AppWidget.semiBoldTextFieldStyle(),
                                  ),
                                  Text(
                                    "\$" + ds["Total"],
                                    style: AppWidget.semiBoldTextFieldStyle(),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  })
              : CircularProgressIndicator();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 40.0),
        child: Column(
          children: [
            Material(
                elevation: 2.0,
                child: Container(
                    padding: EdgeInsets.only(bottom: 10.0),
                    child: Center(
                        child: Text(
                      "Food Cart",
                      style: AppWidget.HeadLineTextFieldStyle(),
                    )))),
            Container(
                height: MediaQuery.of(context).size.height / 1.604,
                child: FoodCart()),
            Spacer(),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Total Price",
                  style: AppWidget.boldTextFieldStyle(),
                ),
                Text(
                  "\$" + total.toString(),
                  style: AppWidget.boldTextFieldStyle(),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            GestureDetector(
              onTap: () async {
                int amount = int.parse(wallet!) - amount2;
                await DatabaseMethods()
                    .UpdateUserWallet(id!, amount.toString());
                await SharedPreferenceHelper()
                    .saveUserWallet(amount.toString());
              },
              child: Container(
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                margin:
                    EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
                child: Center(
                  child: Text(
                    "Checkout",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
