import 'package:FinLit/extra/endDrawer.dart';
import 'package:FinLit/extra/gamemenu.dart';
import 'package:FinLit/game_pages/door.dart';
import 'package:FinLit/game_pages/livingroom_modal/livingroom.dart';
import 'package:FinLit/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LivingRoom extends StatefulWidget {
  
  bool outsideSceneDone;
  LivingRoom({this.outsideSceneDone});
  @override
  _LivingRoomState createState() => _LivingRoomState(outsideSceneDone: this.outsideSceneDone);
}

class _LivingRoomState extends State<LivingRoom> {

  bool outsideSceneDone;
  _LivingRoomState({this.outsideSceneDone});
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
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => GameMenu(bgUrl: "living room v3.png")));
              },
              icon: Icon(Icons.home),
              color: Colors.white,
              highlightColor: Colors.black,
            ),
          ],
        ),
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/images/living room v3.png"),
              fit: BoxFit.cover,
            )),
            child: Stack(children: [
              Positioned(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  AppDrawer(bgUrl: "living room v3.png", outsideSceneDone: outsideSceneDone)),
                          (Route<dynamic> route) => false,
                        );
                      },
                      child: Container(
                          width: 100,
                          height: 200,
                          child: Icon(Icons.arrow_forward_ios_sharp,
                              size: 80, color: Colors.white)),
                    ),
                  ],
                ),
              ),
              getTV(),
            ])));
  }


  Widget getTV() {
    return Positioned(
                top: 0,
                height: 150,
                width: 180,
                right: 320,
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return Dialog(
                            backgroundColor: Colors.transparent,
                            // shape: RoundedRectangleBorder(
                            //     borderRadius: BorderRadius.circular(40)),
                            elevation: 16,
                            child: Container(
                              height: 400,
                              width: 700.0,
                              child: SingleChildScrollView(
                                child: Container(
                                    margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                            "assets/images/tv subscription.png"),
                                        ButtonTheme(
                                            minWidth: 300,
                                            height: 40,
                                            child: RaisedButton(
                                              onPressed: () {
                                                Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            LivingRoomModal()));
                                              },
                                              child: Text(
                                                "Choose Another Subscription",
                                                style: TextStyle(
                                                  color: Colors.white70,
                                                  fontFamily: "Inter-Regular",
                                                  fontSize: 16.0,
                                                ),
                                                maxLines: 1,
                                              ),
                                              color: Colors.transparent,
                                              splashColor: Colors.black,
                                              highlightColor: Colors.black,
                                              padding: EdgeInsets.fromLTRB(
                                                  10, 5, 10, 5),
                                              // minWidth: 250.0,
                                              // height: 50.0,
                                            )),
                                        
                                        
                                        ButtonTheme(
                                            minWidth: 300,
                                            height: 40,
                                            child: RaisedButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: Text(
                                                "Add to Budget",
                                                style: TextStyle(
                                                  color: Colors.white70,
                                                  fontFamily: "Inter-Regular",
                                                  fontSize: 16.0,
                                                ),
                                                maxLines: 1,
                                              ),
                                              color: Colors.transparent,
                                              splashColor: Colors.black,
                                              highlightColor: Colors.black,
                                              padding: EdgeInsets.fromLTRB(
                                                  10, 5, 10, 5),
                                              // minWidth: 250.0,
                                              // height: 50.0,
                                            )),
                                      ],
                                    )),
                              ),
                            ),
                          );
                        });
                  },
                  child: Opacity(
                    opacity: 0,
                    child: Container(
                        width: 20,
                        height: 20,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.red,
                            width: 2.4,
                          ),
                          // color: Color(0xFF0E3311).withOpacity(0.5)
                        ),
                        child: null
                        // Icon(Icons.arrow_forward_ios_sharp,
                        //     size: 80, color: Colors.white)
                        ),
                  ),
                ),
              );
  }
}
