import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class SignUpLoginScreen extends StatefulWidget {
  String caseKey;
  SignUpLoginScreen(this.caseKey);
  @override
  _SignUpLoginScreenState createState() => _SignUpLoginScreenState();
}

class _SignUpLoginScreenState extends State<SignUpLoginScreen> {
  final formKey = GlobalKey<FormState>();

  Widget signLoginForm() {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              (widget.caseKey == "Sign up")
                  ? TextFormField(
                      decoration: InputDecoration(
                        hintText: "UserName......",
                        hintStyle:
                            TextStyle(color: Colors.grey, fontSize: width * 0.01),
                        suffixIcon: Icon(
                          Icons.person,
                          color: Colors.cyan,
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.cyan)),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.cyan),
                        ),
                      ),
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: GoogleFonts.abrilFatface().fontFamily,
                          fontSize: width * 0.01),
                    )
                  : Container(),
              SizedBox(
                height: height * 0.001,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Email......",
                  hintStyle:
                      TextStyle(color: Colors.grey, fontSize: width * 0.01),
                  suffixIcon: Icon(
                    Icons.email,
                    color: Colors.cyan,
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.cyan)),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.cyan),
                  ),
                ),
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: GoogleFonts.abrilFatface().fontFamily,
                    fontSize: width * 0.01),
              ),
              SizedBox(
                height: height * 0.001,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Password......",
                  hintStyle:
                      TextStyle(color: Colors.grey, fontSize: width * 0.01),
                  suffixIcon: Icon(
                    Icons.visibility,
                    color: Colors.cyan,
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.cyan)),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.cyan),
                  ),
                ),
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: GoogleFonts.abrilFatface().fontFamily,
                    fontSize: width * 0.01),
              ),
              SizedBox(
                height: height * 0.001,
              ),
              (widget.caseKey == "Sign up")
                  ? TextFormField(
                      decoration: InputDecoration(
                        hintText: "Verify Password......",
                        hintStyle: TextStyle(
                            color: Colors.grey, fontSize: width * 0.009),
                        suffixIcon: Icon(
                          Icons.visibility,
                          color: Colors.cyan,
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.cyan)),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.cyan),
                        ),
                      ),
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: GoogleFonts.abrilFatface().fontFamily,
                          fontSize: width * 0.01),
                    )
                  : Container()
            ],
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      height: height,
      width: width,
      child: Row(
        children: <Widget>[
          Container(
            width: width * 0.38,
            height: height,
            child: Stack(
              children: <Widget>[
                Image.asset(
                  "SignLoginScreen.jpg",
                  fit: BoxFit.cover,
                  height: height,
                  width: width * 0.38,
                ),
                Opacity(
                  opacity: 0.7,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Colors.deepPurple, Colors.cyan])),
                  ),
                ),
                Container(
                  width: width * 0.38,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: height * 0.1),
                        child: Center(
                          child: Image.asset(
                            "bookCircle.png",
                            width: width * 0.28,
                            height: height * 0.28,
                          ),
                        ),
                      ),
                      Center(
                          child: Text(
                        "The Good Author ",
                        style: TextStyle(
                            fontSize: width * 0.02,
                            color: Colors.white,
                            fontFamily: GoogleFonts.alexBrush().fontFamily),
                      )),
                      Center(
                          child: Text(
                        "^(^ ",
                        style: TextStyle(
                            fontSize: width * 0.01,
                            color: Colors.white,
                            fontFamily: GoogleFonts.alexBrush().fontFamily),
                      )),
                      Padding(
                        padding: EdgeInsets.only(top: width * 0.04),
                        child: Center(
                          child: Text(
                            "Join us and be one of our family \nhere is some quotes for greatest Authors maybe help you !",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: GoogleFonts.italiana().fontFamily,
                                fontSize: width * 0.01),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: width * 0.03, top: height * 0.1),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "* ",
                              style: TextStyle(
                                  fontSize: width * 0.02,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "One day I will find the right words, and they will be simple",
                              style: TextStyle(
                                  fontSize: width * 0.009,
                                  color: Colors.white,
                                  fontFamily: GoogleFonts.adamina().fontFamily),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Jack Kerouac",
                              style: TextStyle(
                                  fontSize: width * 0.01,
                                  color: Colors.deepPurple,
                                  fontFamily:
                                      GoogleFonts.alexBrush().fontFamily,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: width * 0.03,
                        ),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "* ",
                              style: TextStyle(
                                  fontSize: width * 0.02,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "We write to taste life twice, in the moment and in retrospect",
                              style: TextStyle(
                                  fontSize: width * 0.009,
                                  color: Colors.white,
                                  fontFamily: GoogleFonts.adamina().fontFamily),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Anaïs Nin",
                              style: TextStyle(
                                  fontSize: width * 0.01,
                                  color: Colors.deepPurple,
                                  fontFamily:
                                      GoogleFonts.alexBrush().fontFamily,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: width * 0.03,
                        ),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "* ",
                              style: TextStyle(
                                  fontSize: width * 0.02,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "You must stay drunk on writing so reality cannot destroy you",
                              style: TextStyle(
                                  fontSize: width * 0.009,
                                  color: Colors.white,
                                  fontFamily: GoogleFonts.adamina().fontFamily),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Ray Bradbury",
                              style: TextStyle(
                                  fontSize: width * 0.01,
                                  color: Colors.deepPurple,
                                  fontFamily:
                                      GoogleFonts.alexBrush().fontFamily,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
                color: Colors.white,
                child: Stack(children: <Widget>[
                  Positioned(
                    top: height * 0.08,
                    left: (width * 0.35) * 0.1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            GestureDetector(
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                    color: (widget.caseKey == "Sign up")
                                        ? Colors.black
                                        : Colors.grey,
                                    fontSize: width * 0.01,
                                    fontFamily:
                                        GoogleFonts.mcLaren().fontFamily),
                              ),
                              onTap: () {
                                setState(() {
                                  widget.caseKey = "Sign up";
                                });
                              },
                            ),
                            Text(
                              "/",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 18),
                            ),
                            GestureDetector(
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    color: (widget.caseKey == "Login")
                                        ? Colors.black
                                        : Colors.grey,
                                    fontSize: width * 0.01,
                                    fontFamily:
                                        GoogleFonts.mcLaren().fontFamily),
                              ),
                              onTap: () {
                                setState(() {
                                  widget.caseKey = "Login";
                                });
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.1,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("We will need...",
                                    style: TextStyle(
                                        color: Colors.cyan,
                                        fontSize: width * 0.02,
                                        fontFamily:
                                            GoogleFonts.yrsa().fontFamily)),
                                Center(
                                  child: Container(
                                      width: width * 0.2,
                                      height: height * 0.17 * 2,
                                      margin:
                                          EdgeInsets.only(top: height * 0.03),
                                      child: signLoginForm()),
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(left: width * 0.05),
                                  color: Colors.cyan,
                                  width: 1,
                                  height: height * 0.23,
                                ),
                                Container(
                                    margin: EdgeInsets.only(
                                        left: width * 0.05, top: 5, bottom: 5),
                                    child: Text("OR")),
                                Container(
                                  margin: EdgeInsets.only(left: width * 0.05),
                                  color: Colors.cyan,
                                  width: 1,
                                  height: height * 0.17,
                                ),
                                Container(
                                  constraints: BoxConstraints(minWidth: 40,minHeight: 30),
                                  margin: EdgeInsets.only(
                                      left: width * 0.05, top: height * 0.08),
                                  //color: Colors.cyan,
                                  width: 150,
                                  height: height * 0.05,
                                  child: FlatButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Next",
                                      style: TextStyle(
                                          fontSize: width * 0.01,
                                          color: Colors.black,
                                          fontFamily:
                                              GoogleFonts.adamina().fontFamily),
                                    ),
                                    shape: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20.0),
                                        ),
                                        borderSide: BorderSide(
                                            width: 2, color: Colors.cyan)),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: width * 0.02),
                                  child: Text("Also, you can...",
                                      style: TextStyle(
                                          color: Colors.cyan,
                                          fontSize: width * 0.02,
                                          fontFamily:
                                              GoogleFonts.yrsa().fontFamily)),
                                ),
                                Container(
                                  width: width * 0.2,
                                  height: height * 0.4,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      RaisedButton.icon(
                                        padding: EdgeInsets.only(
                                            left: width * 0.015,
                                            right: width * 0.015),
                                        icon: Image.asset(
                                          "google.png",
                                          height: height * 0.03,
                                          width: width * 0.018,
                                        ),
                                        // Buttons.GoogleDark,
                                        color: Colors.blue[900],

                                        label: Text(
                                          "${widget.caseKey} with Google    ",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        shape: UnderlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10.0))),
                                        onPressed: () {},
                                      ),
                                      RaisedButton.icon(
                                        padding: EdgeInsets.only(
                                            left: width * 0.015,
                                            right: width * 0.015),
                                        icon: Image.asset(
                                          "facebook.png",
                                          height: height * 0.03,
                                          width: width * 0.018,
                                        ),
                                        // Buttons.GoogleDark,
                                        color: Colors.blue[900],

                                        label: Text(
                                          "${widget.caseKey} with FaceBook",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        shape: UnderlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10.0))),
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ])),
          )
        ],
      ),
    ));
  }
}
