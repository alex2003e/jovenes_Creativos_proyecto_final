import 'package:flutter/material.dart';
import 'pages/loginPage.dart';
import 'package:flutter/services.dart';
import 'dart:async';


void main() {
  runApp(
      MaterialApp(
        home: SplashScreen(),
      )
  );
}

class SplashScreen extends StatefulWidget {
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Future.delayed(
        Duration(seconds: 3),
            () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => loginPage()
            ),
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    // TODO: implement build
    return Scaffold(
      body: Container(
        child: Image.asset("img/splash.jpg",fit: BoxFit.cover,)
        ,
      ),
    );
  }
}
