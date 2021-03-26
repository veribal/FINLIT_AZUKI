import 'dart:async';

import 'package:flutter/material.dart';

class HomeLanding extends StatefulWidget {
  @override
  _HomeLandingState createState() => _HomeLandingState();
}

class _HomeLandingState extends State<HomeLanding> {
  Timer _timer;
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.fromLTRB(8, 8, 8, 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(5)),
            // border: Border.all(width: 8, color: Colors.black54),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(0, 1.8), // changes position of shadow
              ),
            ],
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      elevation: 16,
                      child: Container(
                        height: 320,
                        child: SingleChildScrollView(
                          physics: ClampingScrollPhysics(),
                          child: Container(
                            width: 360.0,
                            child: Container(
                              margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                              child: Text(
                                "A game-based learning approach to teach YOU financial literacy. You assumes a role as a financial adviser and from there, will help clients make wise financial decisions. Like any adventure-based online games, FinLit features a storyline divided into chapters and further split into several sub-chapters, with each chapter delving into one particular topic pertaining to financial literacy. The storyline focuses a female character named June who as a financial adviser assisting a particular client. ",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Inter-Regular",
                                  color: Colors.black,
                                  // fontWeight: FontWeight.bold
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ).then((value) {
                  if (_timer.isActive) _timer.cancel();
                });
              },
              child: Container(
                padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF4CAF50),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, 1.8), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("FinLit Game",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontFamily: "Inter-Medium",
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white,
                                    fontSize: 18)),
                            SizedBox(height: 10),
                            Ink(
                              // decoration: BoxDecoration(
                              // border: Border.all(color: Colors.black)),
                              child: ClipRRect(
                                  child: Image.asset("assets/images/room.png",
                                      width: 400,
                                      height: 150,
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(height: 10),
                            // Text(
                            //     "By: eww | okii}",
                            //     textAlign: TextAlign.left,
                            //     style: TextStyle(fontFamily: "Inter-Regular")),
                            // SizedBox(height: 5),
                            // Text("description",
                            //     textAlign: TextAlign.justify,
                            //     style: TextStyle(fontFamily: "Inter-Regular"))
                          ]),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      elevation: 16,
                      child: Container(
                        height: 320,
                        child: SingleChildScrollView(
                          physics: ClampingScrollPhysics(),
                          child: Container(
                            width: 360.0,
                            child: Container(
                              margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                              child: Text(
                                "Stock Market Simulation is a feature where YOU get to apply your previous learnings from the chapter-based game and put your trading skills to the test. This feature aims to give the user an in-depth understanding of how the stock market works. Through the Stock Market Simulation, you can trade stocks in real-time using virtual currency. Ultimately, you have to build your own stock portfolio and compete your way up to the top.",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Inter-Regular",
                                  color: Colors.black,
                                  // fontWeight: FontWeight.bold
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ).then((value) {
                  if (_timer.isActive) _timer.cancel();
                });
              },
              child: Container(
                padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red[400],
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, 1.8), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Stock Market Simulation",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontFamily: "Inter-Medium",
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 18)),
                            SizedBox(height: 10),
                            Ink(
                              // decoration: BoxDecoration(
                              // border: Border.all(color: Colors.black)),
                              child: ClipRRect(
                                  child: Image.asset(
                                      "assets/images/stockmarket.jpg",
                                      width: 400,
                                      height: 150,
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(height: 10),
                            // Text(
                            //     "By: eww | okii}",
                            //     textAlign: TextAlign.left,
                            //     style: TextStyle(fontFamily: "Inter-Regular")),
                            // SizedBox(height: 5),
                            // Text("description",
                            //     textAlign: TextAlign.justify,
                            //     style: TextStyle(fontFamily: "Inter-Regular"))
                          ]),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      elevation: 16,
                      child: Container(
                        height: 320,
                        child: SingleChildScrollView(
                          physics: ClampingScrollPhysics(),
                          child: Container(
                            width: 360.0,
                            child: Container(
                              margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                              child: Text(
                                "Info Corner is a feature where YOU can learn about the current economic situation of the country and the rest of the world. This Info Corner is designed to make you and other users fully informed and keep you up-to-date with events happening nearby. Verified informational videos (up for development) are also included for the benefit of other users who are visual learners.",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Inter-Regular",
                                  color: Colors.black,
                                  // fontWeight: FontWeight.bold
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ).then((value) {
                  if (_timer.isActive) _timer.cancel();
                });
              },
              child: Container(
                padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue[400],
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, 1.8), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Info Corner",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontFamily: "Inter-Medium",
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 18)),
                            SizedBox(height: 10),
                            Ink(
                              // decoration: BoxDecoration(
                              // border: Border.all(color: Colors.black)),
                              child: ClipRRect(
                                  child: Image.asset("assets/images/forum.jpg",
                                      width: 400,
                                      height: 150,
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(height: 10),
                            // Text(
                            //     "By: eww | okii}",
                            //     textAlign: TextAlign.left,
                            //     style: TextStyle(fontFamily: "Inter-Regular")),
                            // SizedBox(height: 5),
                            // Text("description",
                            //     textAlign: TextAlign.justify,
                            //     style: TextStyle(fontFamily: "Inter-Regular"))
                          ]),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      elevation: 16,
                      child: Container(
                        height: 320,
                        child: SingleChildScrollView(
                          physics: ClampingScrollPhysics(),
                          child: Container(
                            // height: 500,
                            width: 360.0,
                            child: Container(
                              margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                              child: Text(
                                "FinLit encourages a community of financially responsible individuals. Thus, it includes a Forum feature where YOU and other users can share your experiences, give tips, consult privately with professionals, and be part of a community that aims to promote financial education. FinLit encourages a community of financially responsible individuals. Thus, it includes a Forum feature where YOU and other users can share your experiences, give tips, consult privately with professionals, and be part of a community that aims to promote financial education. ",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Inter-Regular",
                                  color: Colors.black,
                                  // fontWeight: FontWeight.bold
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ).then((value) {
                  if (_timer.isActive) _timer.cancel();
                });
              },
              child: Container(
                padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.orange[400],
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, 1.8), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Forum",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontFamily: "Inter-Medium",
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white,
                                    fontSize: 18)),
                            SizedBox(height: 10),
                            Ink(
                              // decoration: BoxDecoration(
                              // border: Border.all(color: Colors.black)),
                              child: ClipRRect(
                                  child: Image.asset("assets/images/forum.jpg",
                                      width: 400,
                                      height: 150,
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(height: 10),
                            // Text(
                            //     "By: eww | okii}",
                            //     textAlign: TextAlign.left,
                            //     style: TextStyle(fontFamily: "Inter-Regular")),
                            // SizedBox(height: 5),
                            // Text("description",
                            //     textAlign: TextAlign.justify,
                            //     style: TextStyle(fontFamily: "Inter-Regular"))
                          ]),
                    )
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
