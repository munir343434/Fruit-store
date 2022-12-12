import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project_1/Screens/BottomNavBar.dart';
import 'package:project_1/Screens/FavouriteScreen.dart';
import 'package:project_1/Screens/MyOrder.dart';
import 'package:project_1/Screens/SettingScreen.dart';
import 'package:project_1/Screens/help.dart';
import 'package:project_1/Screens/myHeader.dart';
import 'package:project_1/utils/routes_name/routes_name.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  State<NavigationDrawer> createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  var CurrenPage = DrawerSection.favourite;
  var container;
  @override
  Widget build(BuildContext context) {
    // if (CurrenPage == DrawerSection.myorder) {
    //   container = NavigationDrawer();
    // }
    // if (CurrenPage == DrawerSection.favourite) {
    //   Navigator.pushNamed(context, RoutesName.FavouriteScreen);
    // }
    // if (CurrenPage == DrawerSection.setting) {
    //   container = SettingScreen();
    // }
    // if (CurrenPage == DrawerSection.mycart) {
    //   container = MyOrder();
    // }
    // if (CurrenPage == DrawerSection.rateus) {
    //   container = MyOrder();
    // }
    // if (CurrenPage == DrawerSection.referfriend) {
    //   container = MyOrder();
    // }
    // if (CurrenPage == DrawerSection.help) {
    //   container = HelpScreen();
    // }
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          MYHeaderDrawer(),
          MyDrawerList(),
        ]),
      ),
    );
  }

  Widget MyDrawerList() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
      child: Column(children: [
        MenuItem(1, "My Order", Icons.shopping_bag,
            CurrenPage == DrawerSection.myorder ? true : false),
        MenuItem(2, "Favourites", Icons.favorite,
            CurrenPage == DrawerSection.favourite ? true : false),
        MenuItem(3, "Settings", Icons.settings,
            CurrenPage == DrawerSection.setting ? true : false),
        MenuItem(4, "My Cart", Icons.shopping_cart,
            CurrenPage == DrawerSection.mycart ? true : false),
        MenuItem(5, "Rate Us", Icons.rate_review,
            CurrenPage == DrawerSection.rateus ? true : false),
        MenuItem(6, "Refer a Friend", Icons.share,
            CurrenPage == DrawerSection.referfriend ? true : false),
        MenuItem(7, "Help", Icons.help,
            CurrenPage == DrawerSection.help ? true : false),
        MenuItem(8, " Log Out", Icons.logout,
            CurrenPage == DrawerSection.logout ? true : false),
      ]),
    );
  }

  Widget MenuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyOrder()));
            } else if (id == 2) {
              Navigator.pushNamed(context, RoutesName.FavouriteScreen);
            } else if (id == 3) {
              Navigator.pushNamed(context, RoutesName.SettingScreen);
            } else if (id == 4) {
              Navigator.pushNamed(context, RoutesName.FavouriteScreen);
            } else if (id == 5) {
              Navigator.pushNamed(context, RoutesName.FavouriteScreen);
            } else if (id == 6) {
              Navigator.pushNamed(context, RoutesName.FavouriteScreen);
            } else if (id == 7) {
              Navigator.pushNamed(context, RoutesName.HelpScreen);
            } else if (id == 8) {
              Navigator.pushNamed(context, RoutesName.FavouriteScreen);
            }
          });
        },
        child: Column(children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 25,
                  color: Color(0xFF69A03A),
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ]),
          ),
          const Divider(
            color: Color(0xFFD1D1D1),
            height: 1,
            thickness: 1,
          ),
        ]),
      ),
    );
  }
}

enum DrawerSection {
  myorder,
  favourite,
  setting,
  mycart,
  rateus,
  referfriend,
  help,
  logout
}
