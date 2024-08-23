import 'package:flutter/material.dart';
import 'package:food_order/pages/details.dart';
import 'package:food_order/widget/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool burger = false, icecream = false, salad = false, pizza = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        margin: EdgeInsets.only(
          top: 10.0,
          left: 20.0,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Hello Anupam,",
                style: AppWidget.boldTextFieldStyle(),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8.0)),
                child: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
              )
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Text(
            "Delicious Food",
            style: AppWidget.HeadLineTextFieldStyle(),
          ),
          Text(
            "Discover and Get Great Food",
            style: AppWidget.LightTextFieldStyle(),
          ),
          SizedBox(
            height: 30,
          ),
          Container(margin: EdgeInsets.only(right: 20), child: showItem()),
          SizedBox(
            height: 30,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Details()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(4),
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      elevation: 5,
                      child: Container(
                        padding: EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'images/salad2.png',
                              height: 150,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              'Veggie Taco Hash',
                              style: AppWidget.semiBoldTextFieldStyle(),
                            ),
                            Text(
                              'Fresh and Healthy',
                              style: AppWidget.LightTextFieldStyle(),
                            ),
                            Text(
                              '\$25',
                              style: AppWidget.semiBoldTextFieldStyle(),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  margin: EdgeInsets.all(4),
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    elevation: 5,
                    child: Container(
                      padding: EdgeInsets.all(14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'images/salad2.png',
                            height: 150,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            'Mix Veg Table',
                            style: AppWidget.semiBoldTextFieldStyle(),
                          ),
                          Text(
                            'Yummy and Healthy',
                            style: AppWidget.LightTextFieldStyle(),
                          ),
                          Text(
                            '\$35',
                            style: AppWidget.semiBoldTextFieldStyle(),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(
              right: 20.0,
            ),
            child: Material(
              borderRadius: BorderRadius.circular(20),
              elevation: 5.0,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'images/salad2.png',
                        height: 120,
                        width: 120,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              'Mediterranean Chicken Salad',
                              style: AppWidget.semiBoldTextFieldStyle(),
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              'Honey goot cheese',
                              style: AppWidget.LightTextFieldStyle(),
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              '\$28',
                              style: AppWidget.semiBoldTextFieldStyle(),
                            ),
                          ),
                        ],
                      ),
                    ]),
              ),
            ),
          ),
        ]),
      )),
    );
  }

  Widget showItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            icecream = true;
            pizza = false;
            burger = false;
            salad = false;

            setState(() {});
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: icecream ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              child: Image.asset(
                "images/ice-cream.png",
                height: 50.0,
                width: 50.0,
                fit: BoxFit.cover,
                color: icecream ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            icecream = false;
            pizza = true;
            burger = false;
            salad = false;

            setState(() {});
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: pizza ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              child: Image.asset(
                "images/pizza.png",
                height: 50.0,
                width: 50.0,
                fit: BoxFit.cover,
                color: pizza ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            icecream = false;
            pizza = false;
            burger = true;
            salad = false;

            setState(() {});
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: burger ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              child: Image.asset(
                "images/burger.png",
                height: 50.0,
                width: 50.0,
                fit: BoxFit.cover,
                color: burger ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            icecream = false;
            pizza = false;
            burger = false;
            salad = true;

            setState(() {});
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: salad ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              child: Image.asset(
                "images/salad.png",
                height: 50.0,
                width: 50.0,
                fit: BoxFit.cover,
                color: salad ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
