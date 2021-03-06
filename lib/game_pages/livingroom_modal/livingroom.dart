import 'package:FinLit/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LivingRoomModal extends StatefulWidget {
  @override
  _LivingRoomModalState createState() => _LivingRoomModalState();
}

class _LivingRoomModalState extends State<LivingRoomModal> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: null,
          actions: [
            IconButton(
              tooltip: "Go back to Home",
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                  (Route<dynamic> route) => false,
                );
              },
              icon: Icon(Icons.home),
              color: Colors.white,
              highlightColor: Colors.black,
            ),
          ],
        ),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/images/living room v3.png"),
              fit: BoxFit.cover,
            )),
            child: Stack(children: [
              SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            // height: 250,
                            padding: EdgeInsets.all(20),
                            child: Text("Choose Subscription",
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        offset: Offset(.0, 2.0),
                                        blurRadius: 3.0,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ],
                                    fontFamily: "Ubuntu",
                                    fontSize: 22,
                                    color: Colors.white)),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                                                      child: Container(
                              width: 600,
                              child: Image.asset("assets/images/choose subscription.png")),
                          ),
                          ButtonTheme(
                            minWidth: 300,
                            height: 30,
                            child: Container(
                              margin: EdgeInsets.all(0),
                              padding: EdgeInsets.all(0),
                              decoration: BoxDecoration(
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                    color: Colors.white.withOpacity(0.2),
                                    blurRadius: 10,
                                    spreadRadius: 10,
                                    offset: Offset(0, -1),
                                  ),
                                  BoxShadow(
                                    color: Colors.white.withOpacity(0.2),
                                    blurRadius: 10,
                                    spreadRadius: 10,
                                    offset: Offset(-1, -1),
                                  ),
                                ],
                              ),
                              child: RaisedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                color: Colors.black54,
                                splashColor: Colors.black,
                                highlightColor: Colors.black,
                                child: Text("Cancel",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Inter-Medium",
                                      color: Colors.white,
                                    )),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ])));
  }
}
