import 'dart:async';
import 'package:flutter/material.dart';
import 'package:malabargold/WELCOME/welcome.dart';



class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 7), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => welcome()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 124, 8, 72),
        body: Container(
          decoration: BoxDecoration(),
          child:  Center(
            child: SizedBox(
                height: MediaQuery.of(context).size.height/1.8,
                width: MediaQuery.of(context).size.width,
                child: Image.asset("assets/malabar.gif",fit: BoxFit.cover,)),
          )
        ),
      ),
    );
  }
}