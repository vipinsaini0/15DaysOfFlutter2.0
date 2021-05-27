import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/cart_page.dart';
import 'package:flutter_demo/pages/home_detail_page.dart';
import 'package:flutter_demo/pages/login_page.dart';
import 'package:flutter_demo/utilies/routes.dart';
import 'package:flutter_demo/widgets/themes.dart';

import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.loginRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}
