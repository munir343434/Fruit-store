import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project_1/Screens/BottomNavBar.dart';

import '../utils/routes_name/routes_name.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({Key? key}) : super(key: key);

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
          title: Text("Help"),
        ),
        body: 
        Padding(
          padding: EdgeInsets.all(20),
          child: Padding(
            padding: EdgeInsets.only(right: 25),
            child: Column(
              children: [
                Column(children: const[
                  Text(
                      style:
                          TextStyle(fontSize: 13, wordSpacing: 5, height: 1.5),
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
                  Text(
                      style:
                          TextStyle(fontSize: 13, wordSpacing: 5, height: 1.5),
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
                ])
              ,
              ],
            ),
          ),
        ));
  }
}
