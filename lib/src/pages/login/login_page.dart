// ignore: unused_import
import 'dart:ffi';

import 'package:appmath/src/pages/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _PasswordController = TextEditingController();

  //int _debugMessage = 0;

  @override
  void initState() {
    super.initState();
    _usernameController.text = "admin";
    _PasswordController.text = "1234";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Card(
            child: Container(
              height: 400,
              padding: const EdgeInsets.all(32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ..._buildTextFields(),
                  SizedBox(height: 32),
                  ..._buildButtons(),
                  // Text("Debug: $_debugMessage")
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _handleclickLogin() {
    //print(
    //    "appmath: Login with ${_usernameController.text}, ${_PasswordController.text}");
    Navigator.pushNamed(context, AppRoute.home);
  }

  void _handleclickReset() {
    _usernameController.text = "";
    _PasswordController.text = "";
  }

  _buildTextFields() {
    return [
      TextField(
        controller: _usernameController,
        decoration: InputDecoration(labelText: "username"),
      ),
      TextField(
        controller: _PasswordController,
        decoration: InputDecoration(labelText: "Password"),
      ),
    ];
  }

  _buildButtons() {
    return [
      ElevatedButton(
        onPressed: _handleclickLogin,
        child: Text("Login"),
      ),
      OutlinedButton(
        onPressed: _handleclickRegister,
        child: Text("Register"),
      ),
      OutlinedButton(
        onPressed: _handleclickReset,
        child: Text("Reset"),
      )
    ];
  }

  void _handleclickRegister() {
    Navigator.pushNamed(context, AppRoute.register);
  }
}
