import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utils/routes_name/routes_name.dart';

class ChangeAdress extends StatefulWidget {
  const ChangeAdress({Key? key}) : super(key: key);

  @override
  State<ChangeAdress> createState() => _ChangeAdressState();
}

class _ChangeAdressState extends State<ChangeAdress> {
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
        title: Text("Change Address"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Address",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                    maxLines: 5,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)))),
                SizedBox(
                  height: 60,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
                    height: 52,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF69A03A),
                    ),
                    child: Center(
                        child: Text("CHANGE",
                            style: TextStyle(
                              color: Colors.white,
                            ))),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
