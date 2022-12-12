import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utils/routes_name/routes_name.dart';

class AddYourCard extends StatefulWidget {
  const AddYourCard({Key? key}) : super(key: key);

  @override
  State<AddYourCard> createState() => _AddYourCardState();
}

class _AddYourCardState extends State<AddYourCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        backgroundColor: Color(0xFF69A03A),
        title: Text("Add Your Card"),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image(
                    width: 193,
                    height: 121,
                    image: AssetImage("AssetImage/card.png"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Card Holder Name",
                          style:
                              TextStyle(color: Color(0xFFB1B1B1), fontSize: 12),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          height: 45,
                          child: TextField(
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.only(left: 20, bottom: 10),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8))),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Card Number",
                          style:
                              TextStyle(color: Color(0xFFB1B1B1), fontSize: 12),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 76.0,
                                height: 40,
                                child: TextField(
                                  maxLength: 4,
                                  textInputAction: TextInputAction.next,
                                  onChanged: (value) => {
                                    if (value.length == 4)
                                      {
                                        FocusScope.of(context).nextFocus(),
                                      }
                                  },
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      contentPadding:
                                          EdgeInsets.only(left: 15, bottom: 10),
                                      counterText: "",
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8))),
                                ),
                              ),
                              SizedBox(
                                width: 76.0,
                                height: 40,
                                child: TextField(
                                  onChanged: (value) => {
                                    if (value.length == 4)
                                      {
                                        FocusScope.of(context).nextFocus(),
                                      }
                                  },
                                  maxLength: 4,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      counterText: "",
                                      contentPadding:
                                          EdgeInsets.only(left: 15, bottom: 10),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8))),
                                ),
                              ),
                              SizedBox(
                                width: 76.0,
                                height: 40,
                                child: TextField(
                                  onChanged: (value) => {
                                    if (value.length == 4)
                                      {
                                        FocusScope.of(context).nextFocus(),
                                      }
                                  },
                                  maxLength: 4,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      contentPadding:
                                          EdgeInsets.only(left: 15, bottom: 10),
                                      counterText: "",
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8))),
                                ),
                              ),
                              SizedBox(
                                width: 76.0,
                                height: 40,
                                child: TextField(
                                  maxLength: 4,
                                  onChanged: (value) => {
                                    if (value.length == 4)
                                      {
                                        FocusScope.of(context).nextFocus(),
                                      }
                                  },
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      contentPadding:
                                          EdgeInsets.only(left: 15, bottom: 10),
                                      counterText: "",
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8))),
                                ),
                              ),
                            ]),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Valid Thru",
                          style:
                              TextStyle(color: Color(0xFFB1B1B1), fontSize: 12),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 219,
                              height: 40,
                              child: TextField(
                                maxLength: 12,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.only(left: 20, bottom: 10),
                                    counterText: "",
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(8))),
                              ),
                            ),
                            SizedBox(
                              width: 90,
                              height: 40,
                              child: TextField(
                                onChanged: (value) => {
                                  if (value.length == 4)
                                    {
                                      FocusScope.of(context).nextFocus(),
                                    }
                                },
                                maxLength: 4,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.only(left: 20, bottom: 10),
                                    counterText: "",
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(8))),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text("Cvv/cvc",
                            style: TextStyle(
                                color: Color(0xFFB1B1B1), fontSize: 12)),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 99,
                              height: 40,
                              child: TextField(
                                maxLength: 4,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.only(left: 20, bottom: 10),
                                    counterText: "",
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(8))),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("3 or 4 digit code",
                                style: TextStyle(
                                    color: Color(0xFFB1B1B1), fontSize: 12))
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0xFF69A03A)),
                          child: Icon(
                            Icons.done,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, RoutesName.PayNow);
                          },
                          child: Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xFF69A03A)),
                            child: Center(
                                child: Text(
                              "ADD CARD NUMBER",
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                        )
                      ]),
                )
              ]),
        ),
      ),
    );
  }
}
