import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project_1/Screens/AccountScreen.dart';
import 'package:project_1/Screens/FavouriteScreen.dart';
import 'package:project_1/Screens/MyOrder.dart';
import 'package:project_1/Screens/ShoppingCart.dart';
import 'package:project_1/Screens/help.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentIndex = 0;
  final screen = [
    MyOrder(),
    ShoppingCart(),
    FavouriteScreen(),
    NavigationDrawer(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screen[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0XFFFFFFFF),
          selectedItemColor: Color(0xFF69A03A),
          unselectedItemColor: Color(0xFF707070),
          selectedFontSize: 14,
          unselectedFontSize: 14,
          currentIndex: currentIndex,
          iconSize: 25,
          onTap: (index) => setState(() => currentIndex = index),
          items: const [
            BottomNavigationBarItem(
                label: 'Home', icon: Icon(Icons.home_outlined)),
            BottomNavigationBarItem(
              label: 'Shoping Cart',
              icon: Icon(
                Icons.shopping_cart_outlined,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Favourites',
              icon: Icon(Icons.favorite_border_outlined),
            ),
            BottomNavigationBarItem(
              label: 'My Account',
              icon: Icon(
                Icons.person_outline_outlined,
              ),
            ),
          ],
        ));
  }
}
