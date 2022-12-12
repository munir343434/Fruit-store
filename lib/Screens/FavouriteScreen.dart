import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:smooth_star_rating_nsafe/smooth_star_rating.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  List<String> ProductName = [
    'Grapes',
    'Apricots',
    'Broccoli',
    'Onion',
    'Anjeer'
  ];
  List<String> BelowText = [
    'Pick up from organic forms',
    'Pick up from organic forms',
    'Pick up from organic forms',
    'Pick up from organic forms',
    'Pick up from organic forms',
  ];

  List<String> ProductImage = [
    "AssetImage/grapes.jpg",
    "AssetImage/apricots.jpg",
    "AssetImage/broccoli.jpg",
    "AssetImage/onion.jpg",
    "AssetImage/anjeer.jpg",
  ];
  List<String> Price = [
    '160 Per/kg',
    '180 Per/kg',
    '190 Per/kg',
    '130 Per/kg',
    '260 Per/kg',
  ];
  int counter = 0;
  void _increment() {
    counter++;
    setState(() {});
  }

  void _decrerement() {
    counter--;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0xFF69A03A), title: Text("Favourite")),
        body: Column(children: [
          Expanded(
            child: ListView.builder(
                itemCount: ProductName.length,
                itemBuilder: (context, index) {
                  return Column(children: [
                    if (index == 1 ||
                        index == 2 ||
                        index == 3 ||
                        index == 4 ||
                        index == 5)
                      const Divider(
                        color: Color(0XffD1D1D1),
                        height: 1,
                        thickness: 0.8,
                      ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 15, 0, 15),
                      child: Row(children: [
                        Container(
                          height: 95,
                          width: 95,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage(ProductImage[index].toString())),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 210,
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        ProductName[index].toString(),
                                        style: TextStyle(
                                            color: Color(0xFF393939),
                                            fontSize: 14),
                                      ),
                                      Text(Price[index].toString()),
                                    ]),
                              ),
                              SizedBox(height: 5),
                              Text(
                                BelowText[index].toString(),
                                style: TextStyle(
                                    fontSize: 10, color: Color(0xFFB2B2B2)),
                              ),
                              SizedBox(height: 5),
                              Row(children: [
                                SmoothStarRating(
                                    starCount: 5,
                                    rating: 5,
                                    size: 20,
                                    color: Color(0xFFFFB238))
                              ]),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: 210,
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 25,
                                        width: 84,
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Ink(
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.black,
                                                        width: 1),
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                child: InkWell(
                                                  onTap: () {
                                                    _decrerement();
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
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                child: InkWell(
                                                  onTap: () {
                                                    _increment();
                                                  },
                                                  child: Icon(
                                                    Icons.add,
                                                    size: 20.0,
                                                    color: Color(0xFF393939),
                                                  ),
                                                ),
                                              ),
                                            ]),
                                      ),
                                      Container(
                                        width: 68,
                                        height: 27,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Color(0xFFCC7D00),
                                        ),
                                        child: Center(
                                            child: Text(
                                          "Add",
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                    ]),
                              ),
                            ],
                          ),
                        ),
                      ]),
                    ),
                  ]);
                }),
          ),
        ]));
  }
}
