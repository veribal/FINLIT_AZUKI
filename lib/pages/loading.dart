import 'package:FinLit/game_pages/home.dart';
import 'package:FinLit/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setupData() async {
    Future.delayed(Duration(seconds: 3), () {
      // Navigator.of(context).pushReplacement(MaterialPageRoute(
      //   builder: (context) => Home()
      // ));
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => GameHome()),
        (Route<dynamic> route) => false,
      );
    });
  }

  void initState() {
    super.initState();
    setupData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.indigoAccent,
          child: Center(
            child: SpinKitFadingCube(size: 50, color: Colors.white),
          )),
    );
  }
}
