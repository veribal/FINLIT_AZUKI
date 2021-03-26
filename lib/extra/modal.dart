import 'package:FinLit/pages/home.dart';
import 'package:FinLit/pages/quizpage.dart';
import 'package:flutter/material.dart';

// class Modal extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(16)
//       ),
//       elevation: 0,
//       backgroundColor: Colors.transparent,
//       child: _buildChild(context),
//     );
//   }
// }

class Modal extends StatelessWidget {
  final String title, description;
  var mydata; // ignore this lang
  final String prevRoute; // ignore this lang pud
  Modal({this.title, this.description, this.mydata, this.prevRoute = " "});

  @override
  Widget build(BuildContext context) {
    return dialogContent(context);
  }

  Widget dialogContent(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.fromLTRB(10, 50, 10, 20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: <Color>[
                Color(0xFFA5FECB),
                Color(0xFF20BDFF),
                Color(0xFF5433FF)
              ]),
        ),
        child: Stack(
          children: <Widget>[
            Container(
                padding:
                    EdgeInsets.only(top: 100, bottom: 16, left: 16, right: 16),
                margin: EdgeInsets.only(top: 16),
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(17),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10.0,
                        offset: Offset(0.0, 10.0),
                      )
                    ]),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      child: Image.asset('assets/images/please.gif'),
                    ),
                    SizedBox(height: 8),
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 24.0),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Text(description,
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.justify),
                    ),
                    SizedBox(height: 24.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FlatButton(
                          onPressed: () {
                            if (prevRoute == "Home") {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(builder: (context) => Home()),
                                (Route<dynamic> route) => false,
                              );
                            }
                          },
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                              fontFamily: "Inter-Regular",
                              color: Colors.black,
                            ),
                          ),
                          color: Color(0XFFD3D3D3),
                          splashColor: Colors.white12,
                          highlightColor: Colors.white12,
                        ),
                        FlatButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: FlatButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pushReplacement(MaterialPageRoute(
                                builder: (context) => QuizPage(mydata: mydata),
                              ));
                            },
                            child: Text(
                              "Ok",
                              style: TextStyle(
                                fontFamily: "Inter-Regular",
                                color: Colors.white,
                              ),
                            ),
                            color: Color(0xFF536DFE),
                            splashColor: Color(0xFF647FFF),
                            highlightColor: Color(0xFF647FFF),
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
            Positioned(
                top: 0,
                left: 16,
                right: 16,
                child: CircleAvatar(
                  backgroundColor: Colors.blueAccent,
                  radius: 50,
                  child: ClipOval(
                    child: Image.asset('assets/images/sample.jpg'),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
