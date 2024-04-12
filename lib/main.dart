import 'package:flutter/material.dart';
import 'package:test/auth/login_register.dart';
import 'package:test/themes/themeprovider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        child: Consumer<ThemeProvider>(
          builder: (context, themeProvider, child) {
            return loginregister();
          },
        ),
      ),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
