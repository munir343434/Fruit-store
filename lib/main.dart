import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_1/Screens/BottomNavBar.dart';
import 'package:project_1/Screens/AccountScreen.dart';
import 'package:project_1/Screens/HomeScreen.dart';

import 'package:project_1/utils/routes_name/routes.dart';
import 'package:project_1/utils/routes_name/routes_name.dart';

void main() {
  runApp(const MyApp());
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Color(0xFF69A03A)));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      // initialRoute: RoutesName.BottomNavigation,
      // onGenerateRoute: Routes.generateRoute,
    );
  }
}
