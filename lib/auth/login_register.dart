import 'package:flutter/material.dart';
import 'package:test/Pages/Login.dart';
import 'package:test/Pages/register.dart';

class loginregister extends StatefulWidget {
  const loginregister({Key? key}) : super(key: key);

  @override
  State<loginregister> createState() => _loginregisterState();
}

class _loginregisterState extends State<loginregister> {
  bool showLoginPage = true;

  void togglePage() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(onTap: togglePage);
    } else {
      return RegisterPage(onTap: togglePage);
    }
  }
}
