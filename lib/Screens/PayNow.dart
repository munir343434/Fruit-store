import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_1/Screens/LoadingScreen.dart';

import '../utils/routes_name/routes_name.dart';

class PayNow extends StatefulWidget {
  const PayNow({Key? key}) : super(key: key);

  @override
  State<PayNow> createState() => _PayNowState();
}

class _PayNowState extends State<PayNow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 60, 20, 0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios_outlined,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Total Bill:",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Rs 570")
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Column(children: [
                    Icon(
                      Icons.storefront_outlined,
                      size: 25,
                    ),
                    Dash(
                        direction: Axis.vertical,
                        length: 40,
                        dashLength: 4,
                        dashThickness: 3.0,
                        dashColor: Colors.grey),
                    Icon(
                      Icons.location_on_outlined,
                      size: 30,
                    ),
                  ]),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Organic fruit shop"),
                        Text(
                          "2 Items:DiliveryTime 30 Minitues",
                          style:
                              TextStyle(fontSize: 12, color: Color(0xFFA8A8A8)),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Home Adress"),
                            Text("D Block Ram Nagar,Near Sai Petrol",
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xFFA8A8A8))),
                            Text("Pump Ring Road Nagpur-440001",
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xFFA8A8A8))),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Divider(
                color: Color(0XffD1D1D1),
                height: 40,
                thickness: 0.5,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  "Credit/Debit Cards",
                  style: TextStyle(fontSize: 16),
                ),
                Text("ADD NEW CARD",
                    style: TextStyle(fontSize: 12, color: Color(0xFF69A03A))),
              ]),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.credit_card_outlined,
                    size: 35,
                    color: Color(0XFF707070),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "*************4356",
                          style:
                              TextStyle(color: Color(0xFF898989), fontSize: 12),
                        ),
                        Text("Manish Chutika",
                            style: TextStyle(
                                color: Color(0xFF898989), fontSize: 12))
                      ],
                    ),
                  )
                ],
              ),
              const Divider(
                color: Color(0XffD1D1D1),
                height: 10,
                thickness: 1,
              ),
              SizedBox(
                height: 10,
              ),
              Text("Save and pay via cards",
                  style: TextStyle(color: Color(0xFF898989), fontSize: 10)),
              Padding(
                padding: EdgeInsets.only(top: 15, bottom: 20),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "AssetImage/Icons/mastercard.svg",
                      width: 48,
                      height: 29,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    SvgPicture.asset(
                      "AssetImage/Icons/mastercard2.svg",
                      width: 48,
                      height: 29,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    SvgPicture.asset("AssetImage/Icons/visa.svg"),
                  ],
                ),
              ),
              Text(
                "Wallet Method",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    "AssetImage/Icons/phone-pay.svg",
                    width: 40,
                    height: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Phone pay")
                ],
              ),
              const Divider(
                color: Color(0XffD1D1D1),
                height: 10,
                thickness: 0.5,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    "AssetImage/Icons/Google-Pay-Logo.svg",
                    width: 40,
                    height: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Google pay")
                ],
              ),
              const Divider(
                color: Color(0XffD1D1D1),
                height: 10,
                thickness: 0.5,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    "AssetImage/Icons/paypal.svg",
                    width: 40,
                    height: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Pay pal")
                ],
              ),
              SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, RoutesName.LoadingScreen);
                },
                child: Container(
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xFF69A03A)),
                  child: Center(
                    child: Text(
                      "PAY NOW",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ]),
      ),
    );
  }
}
