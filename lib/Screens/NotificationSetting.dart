import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NotificationSetting extends StatefulWidget {
  const NotificationSetting({Key? key}) : super(key: key);

  @override
  State<NotificationSetting> createState() => _NotificationSettingState();
}

class _NotificationSettingState extends State<NotificationSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios),
          backgroundColor: Color(0xFF69A03A),
          title: Text("Notification Settings"),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.notifications,
                          size: 40, color: Color(0xFF69A03A)),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "My Account",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text("Yow will receive daily update",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xFF7B7B7B))),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 125,
                            ),
                            Icon(Icons.toggle_on,
                                size: 40, color: Color(0xFF69A03A)),
                          ])
                    ],
                  ),
                  const Divider(
                    color: Color(0xFFD1D1D1),
                    height: 30,
                    thickness: 1,
                  ),
                  Row(
                    children: [
                      Icon(Icons.notifications,
                          size: 40, color: Color(0xFF69A03A)),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "My Account",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text("Yow will receive daily update",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xFF7B7B7B))),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 125,
                            ),
                            Icon(Icons.toggle_off_outlined,
                                size: 40, color: Color(0xFF707070)),
                          ])
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
