import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_1/utils/routes_name/routes_name.dart';

class LaodingScreen extends StatefulWidget {
  const LaodingScreen({Key? key}) : super(key: key);

  @override
  State<LaodingScreen> createState() => _LaodingScreenState();
}

class _LaodingScreenState extends State<LaodingScreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
        () => Navigator.pushNamed(context, RoutesName.PaymentSuccesful));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: EdgeInsets.only(top: 150),
          child: Column(children: [
            SvgPicture.asset("AssetImage/Icons/Loading.svg"),
            SizedBox(
              height: 40,
            ),
            Text("Please Wait")
          ]),
        )
      ]),
    );
  }
}
