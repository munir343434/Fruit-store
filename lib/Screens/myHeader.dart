import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MYHeaderDrawer extends StatefulWidget {
  const MYHeaderDrawer({Key? key}) : super(key: key);

  @override
  State<MYHeaderDrawer> createState() => _MYHeaderDrawerState();
}

class _MYHeaderDrawerState extends State<MYHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Color(0xFF69A03A),
      child: Padding(
        padding: EdgeInsets.only(top: 50),
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      child: Row(children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          height: 85,
                          width: 85,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage("AssetImage/profile.png"))),
                        ),
                      ]),
                    ),
                    const Text(
                      "Muish Chutake",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      "manishuxuid@gmail.com",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              right: 10,
              child: Icon(
                Icons.edit_note,
                size: 35,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
