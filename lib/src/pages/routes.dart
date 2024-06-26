import 'package:appmath/src/pages/register/register_page.dart';
import 'package:flutter/material.dart';

import 'home/home_page.dart';
import 'login/login_page.dart';

class AppRoute {
  static const home = 'home';
  static const login = 'login';
  static const register = 'register';
  static const calculetor = 'Icon(Icons.calculate)';

  static get all => <String, WidgetBuilder>{
        login: (context) => const LoginPage(),
        home: (context) => HomePage(), // Removed const
        register: (context) => RegisterPage(),
        //calculetor: (context) => Icon(Icons.calculate),
      };
}
