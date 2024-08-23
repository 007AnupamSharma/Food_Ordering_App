// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:food_order/widget/widget_support.dart';
// import 'package:fooddeliveryapp/service/database.dart';
// import 'package:fooddeliveryapp/service/shared_pref.dart';
// import 'package:fooddeliveryapp/widget/widget_support.dart';

class Details extends StatefulWidget {
  // String image, name, detail, price;
  // Details(
  //     {required this.detail,
  //     required this.image,
  //     required this.name,
  //     required this.price});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int a = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.black,
              ),
            ),
            Image.asset(
              'images/salad2.png',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mediterranean',
                      style: AppWidget.semiBoldTextFieldStyle(),
                    ),
                    Text(
                      'Chicken Pea Salad',
                      style: AppWidget.boldTextFieldStyle(),
                    ),
                  ],
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    if (a > 1) {
                      --a;
                    }
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                    child: Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  a.toString(),
                  style: AppWidget.semiBoldTextFieldStyle(),
                ),
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    a++;
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "lorem23 snclsk asnlks endlska asmlwdnjfb aslaksd ednalksm asmasld",
              style: AppWidget.LightTextFieldStyle(),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                Text(
                  "Delivery Time",
                  style: AppWidget.semiBoldTextFieldStyle(),
                ),
                SizedBox(
                  width: 25,
                ),
                Icon(
                  Icons.alarm,
                  color: Colors.black54,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "30min",
                  style: AppWidget.semiBoldTextFieldStyle(),
                ),
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total Price",
                        style: AppWidget.semiBoldTextFieldStyle(),
                      ),
                      Text(
                        "\$28",
                        style: AppWidget.HeadLineTextFieldStyle(),
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(color: Colors.black),
                    child: Row(
                      children: [
                        Text(
                          "Add to cart",
                          style: TextStyle(color: Colors.white),
                        ),
                        Container(
                          padding: ,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// SizedBox(
//               height: 15.0,
//             ),
//             Row(
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'widget.name',
//                       style: AppWidget.semiBoldTextFieldStyle(),
//                     ),
//                   ],
//                 ),
//                 Spacer(),
//                 GestureDetector(
//                   onTap: () {},
//                   child: Container(
//                     decoration: BoxDecoration(
//                         color: Colors.black,
//                         borderRadius: BorderRadius.circular(8)),
//                     child: Icon(
//                       Icons.remove,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 20.0,
//                 ),
//                 Text(
//                   'a.toString()',
//                   style: AppWidget.semiBoldTextFieldStyle(),
//                 ),
//                 SizedBox(
//                   width: 20.0,
//                 ),
//                 GestureDetector(
//                   onTap: () {},
//                   child: Container(
//                     decoration: BoxDecoration(
//                         color: Colors.black,
//                         borderRadius: BorderRadius.circular(8)),
//                     child: Icon(
//                       Icons.add,
//                       color: Colors.white,
//                     ),
//                   ),
//                 )
//               ],
//             ),
//             SizedBox(
//               height: 20.0,
//             ),
//             Text(
//               'widget.detail',
//               maxLines: 4,
//               style: AppWidget.LightTextFieldStyle(),
//             ),
//             SizedBox(
//               height: 30.0,
//             ),
//             Row(
//               children: [
//                 Text(
//                   "Delivery Time",
//                   style: AppWidget.semiBoldTextFieldStyle(),
//                 ),
//                 SizedBox(
//                   width: 25.0,
//                 ),
//                 Icon(
//                   Icons.alarm,
//                   color: Colors.black54,
//                 ),
//                 SizedBox(
//                   width: 5.0,
//                 ),
//                 Text(
//                   "30 min",
//                   style: AppWidget.semiBoldTextFieldStyle(),
//                 )
//               ],
//             ),
//             Spacer(),
//             Padding(
