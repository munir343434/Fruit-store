import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project_1/Screens/BottomNavBar.dart';

import '../utils/routes_name/routes_name.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List<String> BoldText = [
    "Buy 1Kg Get 200gm Free",
    "Get 20% Discount",
    "Get 20 % Extra",
    "Your Order Booked",
    "Get 20 & Discount"
  ];
  List<String> SmallText1 = [
    "Buy 1 Get 1 Free for small sizes",
    "Get 20 % Discount offer on buying",
    "Get 20 % Discount offer on buying",
    "Rajesh will dilivered your order",
    "Get 20 % offer on buying"
  ];
  List<String> SmallText2 = [
    "Unitil Feb 27,2021",
    "Peaches Today",
    "Broccoli Today",
    "Thanks for your order stay with us",
    "Watermelon today"
  ];
  List<String> time = [
    "Few minitues ago",
    "30 minitues ago",
    "1 hour ago",
    "2 days ago",
    "2 days ago"
  ];
  List<IconData> icon = [
    Icons.more_vert,
    Icons.more_vert,
    Icons.more_vert,
    Icons.more_vert,
    Icons.more_vert,
  ];
  Widget BuildIcon(int index) {
    return Container(
        height: 18,
        child: Icon(
          icon[index],
          size: 20,
        ));
  }

  List<String> History = [
    "Today",
    "",
    "",
    "Yesterday",
    "",
  ];
  List<String> Productimages = [
    "AssetImage/anjeer.jpg",
    "AssetImage/fruit.jpg",
    "AssetImage/broccoli.jpg",
    "AssetImage/real-fruit.jpg",
    "AssetImage/june.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: new IconButton(
              icon: new Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.popAndPushNamed(context, RoutesName.SettingScreen);
              }),
          backgroundColor: Color(0xFF69A03A),
          title: Text("Notification",),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: BoldText.length,
                  itemBuilder: (context, index) {
                    return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (index == 1 || index == 2 || index == 4)
                            const Divider(
                              color: Color(0XffD1D1D1),
                              height: 1,
                              thickness: 0.8,
                            ),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (index == 0 || index == 3)
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 15,
                                      top: 15,
                                    ),
                                    child: Text(History[index].toString()),
                                  ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(15, 15, 0, 15),
                                  child: Row(children: [
                                    Container(
                                      height: 70,
                                      width: 70,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                Productimages[index]
                                                    .toString()),
                                          )),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 250,
                                            height: 20,
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(BoldText[index]
                                                      .toString()),
                                                  BuildIcon(index)
                                                ]),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(SmallText1[index].toString(),
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Color(0xFFAAAAAA))),
                                          Text(SmallText2[index].toString(),
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Color(0xFFAAAAAA))),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            time[index].toString(),
                                            style: TextStyle(fontSize: 10),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ]),
                                ),
                              ]),
                        ]);
                  }),
            ),
          ],
        ));
  }
}
