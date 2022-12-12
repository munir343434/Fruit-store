import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utils/routes_name/routes_name.dart';

class AccountSetting extends StatefulWidget {
  const AccountSetting({Key? key}) : super(key: key);

  @override
  State<AccountSetting> createState() => _AccountSettingState();
}

class _AccountSettingState extends State<AccountSetting> {
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
        title: Text("Acoount Setting"),
      ),
      body: BuildListItm(),
    );
  }

  Widget BuildListItm() {
    return Container(
      padding: EdgeInsets.only(top: 6),
      child: Column(
        children: [
          ShowItem(
            1,
            "Security",
            Icons.verified_user_outlined,
          ),
          ShowItem(
            2,
            "Account Setting",
            Icons.gpp_bad_outlined,
            
          ),
          ShowItem(
            3,
            "Delete Account",
            Icons.delete,
          ),
        ],
      ),
    );
  }

  Widget ShowItem(int id, String title, IconData icon) {
    return Material(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(children: [
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
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          const Divider(
            color: Color(0xFFD1D1D1),
            height: 2,
          )
        ]),
      ),
    );
  }
}

enum ListItem { security, deactiveAccount, DeleteAccount }
