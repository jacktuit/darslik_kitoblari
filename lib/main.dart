import 'package:darslik_kitoblari/searchField.dart';
import 'package:darslik_kitoblari/sign_screens/login_page.dart';
import 'package:darslik_kitoblari/sign_screens/sign_up_page.dart';
import 'package:darslik_kitoblari/sign_screens/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home:SignUpPage()
    );
  }
}

