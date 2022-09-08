import 'package:b4md_app/views/auth/login_screen.dart';
import 'package:b4md_app/views/auth/sign_up.dart';
import 'package:flutter/material.dart';

import 'components/nav_bar.dart';
import 'views/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  RegisterScreen(),
    );
  }
}
