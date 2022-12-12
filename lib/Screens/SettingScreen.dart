import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project_1/Screens/AcoountSetting.dart';

import '../utils/routes_name/routes_name.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  var currentPage = ListItem.setting;
  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == ListItem.setting) {
      container = AccountSetting();
    }
    return Scaffold(
        appBar: AppBar(
          leading: new IconButton(
              icon: new Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.popAndPushNamed(context, RoutesName.AccountScreen);
              }),
          backgroundColor: Color(0xFF69A03A),
          title: Text("Settings"),
        ),
        body: Container(child: IconList()));
  }

  Widget IconList() {
    return Container(
      padding: EdgeInsets.only(top: 6),
      child: Column(
        children: [
          ItemList(
            1,
            " Account",
            Icons.account_circle,
            currentPage == ListItem.setting ? true : false,
          ),
          ItemList(2, "Notifications", Icons.notifications,
              currentPage == ListItem.notifiation ? true : false),
          ItemList(3, "Language", Icons.language,
              currentPage == ListItem.language ? true : false),
          ItemList(4, "Change Adress", Icons.edit_location,
              currentPage == ListItem.changeAdress ? true : false),
        ],
      ),
    );
  }

  Widget ItemList(int id, String title, IconData icon, bool selected) {
    return Material(
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              Navigator.pushNamed(context, RoutesName.AccountSetting);
            } else if (id == 2) {
              Navigator.pushNamed(context, RoutesName.Notification);
            } else if (id == 3) {
              Navigator.pushNamed(context, RoutesName.LanguageSetting);
            } else if (id == 4) {
              Navigator.pushNamed(context, RoutesName.ChangeAdress);
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    icon,
                    size: 25,
                    color: Color(0xFF69A03A),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    title.toString(),
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              const Divider(
                color: Color(0xFFD1D1D1),
                height: 2,
              )
            ],
          ),
        ),
      ),
    );
  }
}

enum ListItem { setting, notifiation, language, changeAdress }
