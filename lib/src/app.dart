// ignore_for_file: unused_import

import 'package:appmath/src/pages/home/home_page.dart';
import 'package:appmath/src/pages/login/login_page.dart';
import 'package:appmath/src/pages/routes.dart';
import 'package:flutter/material.dart';

class appmath extends StatelessWidget {
  const appmath({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: "appmath",
      routes: AppRoute.all,
      home: HomePage(),
    );
  }
}
