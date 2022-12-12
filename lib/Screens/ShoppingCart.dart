import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utils/routes_name/routes_name.dart';

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({Key? key}) : super(key: key);

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  List<String> Title = ["Broccoli", "Onion", "Anjeer"];
  List<String> Prices = ["Rs 190", "Rs 260", "Rs 260"];
  List<String> PerKg = ["150 Per/kg", "200 Per/kg", "220 Per/kg"];
  List<String> SevedPrices = ["Rs 40 Saved", "Rs 60 Sved", "Rs 40 Saved"];
  List<String?> FruitType = ["Vegetables", null, "Dry Fruits"];
  List<String> ProductImages = [
    "AssetImage/broccoli.jpg",
    "AssetImage/onion.jpg",
    "AssetImage/anjeer.jpg",
  ];
  @override
  int counter = 0;
  void _incrementCounter() {
    counter++;
    setState(() {});
  }

  void _decrementCounter() {
    counter--;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        backgroundColor: Color(0xFF69A03A),
        title: Text(
          "Shopping Cart",
          style: TextStyle(),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Icon(
                  Icons.location_on_sharp,
                  size: 15,
                  color: Color(0xFF606060),
                ),
                SizedBox(
                  width: 10,
                ),
                Text("441001"),
                SizedBox(
                  width: 10,
                ),
                Text("Nagpur ,Maharashtra"),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.expand_more_outlined,
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Change Adress",
                  style: TextStyle(fontSize: 10, color: Color(0xFF7089F0)),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: Title.length,
                itemBuilder: (context, index) {
                  return Column(children: [
                    if (index == 0 || index == 2)
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        height: 32,
                        width: double.infinity,
                        decoration: BoxDecoration(color: Color(0xFFE6E6E6)),
                        child: Text(FruitType[index].toString()),
                      ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Row(children: [
                        Container(
                          height: 95,
                          width: 95,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                ProductImages[index].toString(),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.6,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(Title[index].toString()),
                                    Text(
                                      SevedPrices[index].toString(),
                                      style: TextStyle(
                                          color: Color(0xFF69A03A),
                                          fontSize: 12),
                                    ),
                                    Icon(Icons.delete),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                Prices[index].toString(),
                                style: TextStyle(
                                    fontSize: 12,
                                    decoration: TextDecoration.lineThrough),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(PerKg[index].toString(),
                                  style: TextStyle(
                                    fontSize: 12,
                                  )),
                              Padding(
                                padding: EdgeInsets.only(left: 130),
                                child: Container(
                                    width: 84,
                                    height: 25,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Ink(
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.black,
                                                    width: 1),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: InkWell(
                                              onTap: () {
                                                _decrementCounter();
                                              },
                                              child: Icon(
                                                Icons.remove,
                                                size: 20.0,
                                                color: Color(0xFF393939),
                                              ),
                                            ),
                                          ),
                                          Text(counter.toString()),
                                          Ink(
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.black,
                                                    width: 1),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: InkWell(
                                              onTap: () {
                                                _incrementCounter();
                                              },
                                              child: Icon(
                                                Icons.add,
                                                size: 20.0,
                                                color: Color(0xFF393939),
                                              ),
                                            ),
                                          ),
                                        ])),
                              ),
                            ],
                          ),
                        ),
                      ]),
                    ),
                    if (index == 0)
                      const Divider(
                        color: Color(0XffD1D1D1),
                        height: 1,
                      ),
                  ]);
                }),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(children: [
              Text("Total-"),
              SizedBox(
                width: 10,
              ),
              Text(
                "Rs ",
                style: TextStyle(fontSize: 16),
              ),
              Text("570"),
              SizedBox(
                width: 140,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, RoutesName.AddCard);
                },
                child: Container(
                  width: 136,
                  height: 35,
                  decoration: BoxDecoration(
                      color: Color(0xFF769E49),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                      child: Text(
                    "Place Order",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
