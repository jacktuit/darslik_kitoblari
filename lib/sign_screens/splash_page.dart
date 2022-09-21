import 'dart:async';

import 'package:darslik_kitoblari/sign_screens/login_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),
            () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xffc8e6c9),
                    Color(0xff66bb6a),
                  ])
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(

                height: 200,
                width: 200,
                child: Image.asset(
                  "images/bookOne.png",
                  fit: BoxFit.cover,
                ),
              ),
              Text(

                "Maktab kutubxonachilari uchun \n dastur",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 17,
                    color: Colors.white70,
                    fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(height: 104,),
              CircularProgressIndicator(
                color: Colors.greenAccent,
              )
            ],
          ),
        ),
      ),
    );
  }
}
