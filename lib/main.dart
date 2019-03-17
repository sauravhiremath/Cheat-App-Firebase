import 'package:cheat_app/pages/home.page.dart';
import 'package:cheat_app/pages/login.page.dart';
import 'package:cheat_app/services/auth.service.dart';
import 'package:flutter/material.dart';

AuthService appAuth = new AuthService();

void main() async {
  // Set default home.
  Widget _defaultHome = new LoginPage();

  // Get result of the login function.
  bool _result = await appAuth.login();
  if (_result) {
    _defaultHome = new HomePage();
  }

  runApp(new MaterialApp(
    title: 'TimeSpace',
    home: _defaultHome,
    routes: <String, WidgetBuilder>{
      // Set routes for using the Navigator.
      '/home': (BuildContext context) => new HomePage(),
      '/login': (BuildContext context) => new LoginPage(),
    },
    )
  );
}