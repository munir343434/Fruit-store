import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:smooth_star_rating_nsafe/smooth_star_rating.dart';

import '../utils/routes_name/routes_name.dart';

class MyOrder extends StatefulWidget {
  const MyOrder({Key? key}) : super(key: key);

  @override
  State<MyOrder> createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
  List<String> ProductName = ["Broccoli", "Onion", "Anjeer"];

  List<String> Date = [
    'Delivered on 24 Feb 2022',
    'Delivered on 24 Feb 2022',
    'Delivered on 24 Feb 2022',
  ];
  List<String> ProductImage = [
    "AssetImage/broccoli.jpg",
    "AssetImage/onion.jpg",
    "AssetImage/anjeer.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: new IconButton(
              icon: new Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.popAndPushNamed(context, RoutesName.AccountScreen);
              }),
          backgroundColor: Color(0xFF69A03A),
          title: Text(
            "My Order",
            style: TextStyle(),
          ),
        ),
        body: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: ProductName.length,
                    itemBuilder: (
                      context,
                      int index,
                    ) {
                      return Column(children: [
                        if (index == 1 || index == 2)
                          const Divider(
                            color: Color(0XffD1D1D1),
                            height: 1,
                            thickness: 0.5,
                          ),
                        Padding(
                            padding: EdgeInsets.all(15),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 95,
                                      width: 95,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  ProductImage[index]
                                                      .toString()),
                                              fit: BoxFit.cover)),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 20,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              width: 210,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    ProductName[index]
                                                        .toString(),
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons.navigate_next,
                                                    size: 30,
                                                  )
                                                ],
                                              )),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Row(children: [
                                            SmoothStarRating(
                                              starCount: 5,
                                              rating: 5,
                                              size: 20,
                                              color: Color(0XFFA6A1A1),
                                            )
                                          ]),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Pick up from organic farms",
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Color(0xFFA6A1A1)),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(bottom: 8),
                                            child: Text(
                                              Date[index].toString(),
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )),
                      ]);
                    })),
          ],
        ));
  }
}
