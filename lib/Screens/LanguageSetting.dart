import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utils/routes_name/routes_name.dart';

class LanguageSetting extends StatefulWidget {
  const LanguageSetting({Key? key}) : super(key: key);

  @override
  State<LanguageSetting> createState() => _LanguageSettingState();
}

class _LanguageSettingState extends State<LanguageSetting> {
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
        title: Text("Notification Settings"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Language",
                style: TextStyle(fontSize: 14, color: Color(0xFFA6A1A1)),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Row(
                  children: const [
                    Text("Language"),
                    SizedBox(
                      width: 100,
                    ),
                    Text("English"),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "(United",
                      style: TextStyle(color: Color(0xFFA6A1A1)),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Icon(
                      Icons.navigate_next,
                      size: 30,
                    )
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 250),
                  child: Text("States)",
                      style: TextStyle(color: Color(0xFFA6A1A1))))
            ]),
      ),
    );
  }
}
