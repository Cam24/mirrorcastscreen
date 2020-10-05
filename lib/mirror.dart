import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mirror extends StatefulWidget {
  @override
  _MirrorState createState() => _MirrorState();
}

class _MirrorState extends State<Mirror> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD2D6FB),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    "Local screencast",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                "images/b2.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xffDBD8F4),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(30))),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Remaining Time",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Bubble(text: "6"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Bubble(text: "6"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Bubble(text: "9"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Hour"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Bubble(text: "3"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Bubble(text: "8"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Minute"),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    children: [
                      Text("200 minutes to total"),
                      Spacer(),
                      Text("44min")
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: LinearProgressIndicator(
                    value: 0.8,
                    valueColor:
                        AlwaysStoppedAnimation<Color>(Color(0xff7166FF)),
                    backgroundColor: Color(0xffF1F1FB),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 35.0),
                  child: Row(
                    children: [
                      Text("365 minutes to total"),
                      Spacer(),
                      Text("136min")
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: LinearProgressIndicator(
                    value: 0.3,
                    valueColor:
                        AlwaysStoppedAnimation<Color>(Color(0xff7166FF)),
                    backgroundColor: Color(0xffF1F1FB),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 35.0),
                  child: Row(
                    children: [
                      Text("200 minutes to total"),
                      Spacer(),
                      Text("58min")
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: LinearProgressIndicator(
                    value: 0.6,
                    valueColor:
                        AlwaysStoppedAnimation<Color>(Color(0xff7166FF)),
                    backgroundColor: Color(0xffF1F1FB),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Bubble extends StatelessWidget {
  var text;

  Bubble({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
            color: Color(0xff7166FF), borderRadius: BorderRadius.circular(6)),
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ));
  }
}
