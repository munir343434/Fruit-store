import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/routes_name/routes_name.dart';

class PaymentSuccesful extends StatefulWidget {
  const PaymentSuccesful({Key? key}) : super(key: key);

  @override
  State<PaymentSuccesful> createState() => _PaymentSuccesfulState();
}

class _PaymentSuccesfulState extends State<PaymentSuccesful> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
        () => Navigator.pushNamed(context, RoutesName.BottomNavigation));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: EdgeInsets.only(top: 150),
          child: Column(children: [
            SvgPicture.asset("AssetImage/Icons/done.svg"),
            SizedBox(
              height: 40,
            ),
            Text("Payment Successful"),
            Text("Your Order is Booked")
          ]),
        ),
      ]),
    );
  }
}
