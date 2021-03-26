import 'package:FinLit/pages/home.dart';
import 'package:FinLit/pages/loading.dart';
import 'package:FinLit/pages/quizpage.dart';
import 'package:flutter/material.dart';

// class ResultModal extends StatelessWidget {
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

class ResultModal extends StatefulWidget {
  final String title, description;
  final String prevRoute; // ignore this lang pud

  final res;
  ResultModal(
      {this.title = "", this.description = "", this.prevRoute = " ", this.res});

  @override
  _ResultModalState createState() => _ResultModalState(res: this.res);
}

class _ResultModalState extends State<ResultModal> {
  String stateRn = "first";
  var res = {};
  var chapters = {
    "chapter 1": true,
    "chapter 2": false,
    "chapter 4": false,
    "chapter 5": false,
  };

  void initState() {
    super.initState();

    assess();

    setState(() {});

    print("I AWWWM CALLED");
  }

  String determineWhatChapter() {
    checkAgain("1");
    checkAgain("2");
    checkAgain("4");
    checkAgain("5");

    if (chapters["chapter 5"] == true) return "Chapter 5";
    if (chapters["chapter 4"] == true) return "Chapter 4";
    if (chapters["chapter 2"] == true) return "Chapter 2";
    return "Chapter 1";
  }

  void checkAgain(String x) {
    if (num.parse(x) + 1 > 5)
      chapters["chapter 5"] =
          (chapters["chapter 4"] == true && chapters["chapter 5"] == true)
              ? true
              : false;

    // sleepyyyy
    if (num.parse(x) == 2)
      chapters["chapter 2"] =
          (chapters["chapter 1"] == true && chapters["chapter 2"] == true)
              ? true
              : false;

    if (num.parse(x) == 4)
      chapters["chapter 4"] =
          (chapters["chapter 4"] == true && chapters["chapter 2"] == true)
              ? true
              : false;
  }

  void assess() {
    if (res["Savings and Borrowing"] >= 5 && res["Savings and Borrowing"] <= 6)
      chapters["chapter 2"] = true;

    if (res["Insurance"] >= 3 && res["Insurance"] <= 4)
      chapters["chapter 4"] = true;

    if (res["Investment"] >= 4 && res["Investment"] <= 5)
      chapters["chapter 5"] = true;

    // im so sleepy
  }

  _ResultModalState({this.res});

  @override
  Widget build(BuildContext context) {
    print(res);

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
                      child: Image.asset('assets/images/well-done.gif'),
                    ),
                    SizedBox(height: 8),
                    Text(
                      widget.title,
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 24.0),
                    // Container(
                    //   margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    //   child: Text(description,
                    //       style: TextStyle(fontSize: 16),
                    //       textAlign: TextAlign.justify),
                    // ),
                    // Container(
                    //   margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    // child: Text(description,
                    //     style: TextStyle(fontSize: 16),
                    //     textAlign: TextAlign.justify),
                    // ),

                    (stateRn == "first")
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(25, 5, 0, 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                          "I. General Personal Finance Knowledge:",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontFamily: "Ubuntu-Reg",
                                            // color: Colors.green[500]
                                          ),
                                          textAlign: TextAlign.left),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                          "${widget.res['General Personal Finance Knowledge']}/5",
                                          style: TextStyle(
                                            fontSize: 18,
                                          ),
                                          textAlign: TextAlign.center),
                                    ),
                                  ],
                                ),

                                // second
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(25, 5, 0, 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Text("II. Savings and Borrowing:",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontFamily: "Ubuntu-Reg",
                                            // color: Colors.pink[400]
                                          ),
                                          textAlign: TextAlign.left),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                          "${widget.res['Savings and Borrowing']}/6",
                                          style: TextStyle(
                                            fontSize: 18,
                                          ),
                                          textAlign: TextAlign.center),
                                    ),
                                  ],
                                ),
                              ),

                              // third
                              Container(
                                padding: EdgeInsets.fromLTRB(25, 5, 0, 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Text("III. Insurance:",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontFamily: "Ubuntu-Reg",
                                            // color: Colors.deepOrange[400]
                                          ),
                                          textAlign: TextAlign.left),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child:
                                          Text("${widget.res['Insurance']}/4",
                                              style: TextStyle(
                                                fontSize: 18,
                                              ),
                                              textAlign: TextAlign.center),
                                    ),
                                  ],
                                ),
                              ),

                              // fourth
                              Container(
                                padding: EdgeInsets.fromLTRB(25, 5, 0, 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Text("IV. Investments:",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontFamily: "Ubuntu-Reg",
                                            // color: Colors.lightBlue[400]
                                          ),
                                          textAlign: TextAlign.left),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child:
                                          Text("${widget.res['Investment']}/5",
                                              style: TextStyle(
                                                fontSize: 18,
                                              ),
                                              textAlign: TextAlign.center),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        : Container(
                          margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child: Text(
                            "Based on your results, you may start the game on ${determineWhatChapter()}. But we recommend you to start from the very beginning. :)",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontFamily: "Inter-Regular",
                              fontSize: 18
                            )
                            )
                          ),

                    SizedBox(height: 24.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FlatButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: FlatButton(
                            onPressed: () {
                              if (stateRn == "second") {
                                Navigator.of(context)
                                    .pushReplacement(MaterialPageRoute(
                                  builder: (context) => Loading(),
                                ));
                              } else {

                                setState(() {stateRn = "second";});
                              }


                            },
                            child: Text(
                              "Continue",
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
