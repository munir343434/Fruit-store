import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:smooth_star_rating_nsafe/smooth_star_rating.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> Name = ["Cashewnuts", "Walnuts", "Hazelnuts", "aghv"];
  List<String> price = ["₹550 Per/kg", "₹200 Per/kg", "₹120 Per/kg", "bcbh"];
  List<String> ProductImage = [
    "AssetImage/walnuts.jpg",
    "AssetImage/cashenuts.jpg",
    "AssetImage/Hazelnuts.jpg",
    "AssetImage/Hazelnuts.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF69A03A),
        title: Text("Fruit Market"),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: [
          Stack(children: [
            Container(
              height: 20,
              width: double.infinity,
              color: Color(0xFF69A03A),
            ),
            Positioned(
              // top: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 9,
                        blurRadius: 9,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(Icons.search),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xffE4E7EB)),
                            borderRadius: BorderRadius.circular(20)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xffE4E7EB)),
                            borderRadius: BorderRadius.circular(20)),
                        hintText: "Search"),
                  ),
                ),
              ),
            ),
          ]),
          Padding(
            padding: EdgeInsets.all(40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () {
                      color:
                      Color(0xFFCC7D00);
                    },
                    child: Container(
                      width: 83,
                      height: 25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xFFCC7D00)),
                      child: Center(
                          child: Text(
                        "Vegetables",
                        style: TextStyle(color: Colors.white),
                      )),
                    )),
                InkWell(
                    onTap: () {
                      color:
                      Color(0xFFCC7D00);
                    },
                    child: Container(
                      width: 83,
                      height: 25,
                      decoration: BoxDecoration(
                        color: Color(0xFFCC7D00),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                          child: Text("Fruit",
                              style: TextStyle(color: Colors.white))),
                    )),
                InkWell(
                  onTap: () {
                    color:
                    Color(0xFFCC7D00);
                  },
                  child: Container(
                    width: 83,
                    height: 25,
                    decoration: BoxDecoration(
                      color: Color(0xFFCC7D00),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(
                        child: Text("Dry Fruits",
                            style: TextStyle(color: Colors.white))),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text("Indehiscent Dry Fruits",
                        style: TextStyle(fontSize: 16)),
                    SizedBox(
                      width: 20,
                    ),
                    Text("20 % off",
                        style: TextStyle(color: Color(0xFF4CA300))),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Pick up from organic farms"),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 250,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Name.length,
                    itemBuilder: (context, index) {
                      return Column(children: [
                        // if (index == 3)
                        //   Column(
                        //       mainAxisAlignment: MainAxisAlignment.start,
                        //       crossAxisAlignment: CrossAxisAlignment.start,
                        //       children: [
                        //         Row(children: const [
                        //           Text(
                        //             "Mixed Dry Fruit Pack",
                        //             style: TextStyle(fontSize: 16),
                        //           ),
                        //           SizedBox(
                        //             width: 20,
                        //           ),
                        //           Text("10% off",
                        //               style:
                        //                   TextStyle(color: Color(0xFF4CA300))),
                        //         ]),
                        //         Text("Dry Fruit mix fresh pack"),
                        //       ]),
                        Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Image(
                                        width: 118,
                                        height: 143,
                                        image: AssetImage(
                                            ProductImage[index].toString())),
                                    Positioned(
                                      right: 5,
                                      top: 5,
                                      child: CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.white,
                                        child: InkWell(
                                          onTap: () {
                                            Colors.red;
                                          },
                                          child: Icon(
                                            Icons.favorite_border_outlined,
                                            color: Color(
                                              0xFFEDCB15,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                SmoothStarRating(
                                  starCount: 5,
                                  rating: 5,
                                  color: Color(0xFFFFB238),
                                  size: 20,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(Name[index].toString()),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(price[index].toString()),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                      ]);
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
