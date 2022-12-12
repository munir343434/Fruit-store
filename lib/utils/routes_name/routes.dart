import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_1/Screens/AcoountSetting.dart';
import 'package:project_1/Screens/AddCard.dart';
import 'package:project_1/Screens/BottomNavBar.dart';
import 'package:project_1/Screens/FavouriteScreen.dart';
import 'package:project_1/Screens/LanguageSetting.dart';
import 'package:project_1/Screens/MyOrder.dart';
import 'package:project_1/Screens/Notification.dart';
import 'package:project_1/Screens/PayNow.dart';
import 'package:project_1/Screens/PaymentSuccesfulScreen.dart';
import 'package:project_1/Screens/SettingScreen.dart';
import 'package:project_1/Screens/changeAddress.dart';
import 'package:project_1/Screens/help.dart';
import 'package:project_1/utils/routes_name/routes_name.dart';
import 'package:project_1/Screens/AccountScreen.dart';
import 'package:project_1/Screens/LoadingScreen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.AccountScreen:
        return MaterialPageRoute(builder: (context) => NavigationDrawer());
      case RoutesName.AccountSetting:
        return MaterialPageRoute(builder: (context) => AccountSetting());
      case RoutesName.AddCard:
        return MaterialPageRoute(builder: (context) => AddYourCard());
      case RoutesName.HelpScreen:
        return MaterialPageRoute(builder: (context) => HelpScreen());
      case RoutesName.LanguageSetting:
        return MaterialPageRoute(builder: (context) => LanguageSetting());
      case RoutesName.Notification:
        return MaterialPageRoute(builder: (context) => NotificationScreen());
      case RoutesName.PaymentSuccesful:
        return MaterialPageRoute(builder: (context) => PaymentSuccesful());
      case RoutesName.SettingScreen:
        return MaterialPageRoute(builder: (context) => SettingScreen());
      case RoutesName.PayNow:
        return MaterialPageRoute(builder: (context) => PayNow());
      case RoutesName.MyOrder:
        return MaterialPageRoute(builder: (context) => MyOrder());
      case RoutesName.ChangeAdress:
        return MaterialPageRoute(builder: (context) => ChangeAdress());
      case RoutesName.BottomNavigation:
        return MaterialPageRoute(builder: (context) => BottomNavigation());
      case RoutesName.FavouriteScreen:
        return MaterialPageRoute(builder: (context) => FavouriteScreen());
        case RoutesName.LoadingScreen:
        return MaterialPageRoute(builder: (context) => LaodingScreen());


      default:
        return MaterialPageRoute(builder: (context) {
          return Scaffold(
            body: Text("NO route defined"),
          );
        });
    }
  }
}
