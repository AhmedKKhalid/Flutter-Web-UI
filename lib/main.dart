import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import './Screens/SignLoginScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/introBackGround.jpg"),
                  fit: BoxFit.cover),
            )),
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
        Positioned(
            top: height * 0.3,
            left: width * 0.1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "The Good Auther",
                  style: TextStyle(
                      fontSize: width * 0.04,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.tenorSans().fontFamily),
                ),
                Padding(
                  padding: EdgeInsets.only(top: height * 0.02),
                  child: Text(
                    "If you are a good writer then this is your place \n here where you can write your books and publish them \n and get your stars",
                    style: TextStyle(
                        fontSize: width * 0.013333,
                        color: Colors.white,
                        fontFamily: GoogleFonts.yesevaOne().fontFamily),
                  ),
                ),
                Container(
                //  width: width*0.07,
               //   height: height*0.05,
                  constraints: BoxConstraints(minHeight: 35,minWidth: 40),
                  margin: EdgeInsets.only(top: height * 0.04, left: 20),
                  child: RaisedButton(
                    elevation: 10,
                    padding: EdgeInsets.only(
                        right: width * 0.02, left: width * 0.02),
                    child: Text(
                      "Start",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: width*0.01,
                          fontFamily: GoogleFonts.tenorSans().fontFamily),
                    ),
                    onPressed: () {},
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(color: Colors.transparent)),
                    color: Colors.pinkAccent[200],
                  ),
                ),
              ],
            )),
        Positioned(
            right: MediaQuery.of(context).size.width / 2 * 0.01,
            width: width / 2,
            height: height / 2 + height * 0.2,
            top: MediaQuery.of(context).size.height / 2 * 0.4,
            child: Column(
              children: <Widget>[
                Image.asset(
                  "assets/writerImage.png",
                  height: height * .5,
                ),
                Text(
                  "The Good Auther ",
                  style: TextStyle(
                      fontSize: (width + height) / 2 * 0.02,
                      fontFamily: GoogleFonts.alexBrush().fontFamily),
                )
              ],
            )),
        Positioned(
            top: height * 0.05,
            right: width * 0.1,
            child: Row(
              children: <Widget>[
                GradientButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40.0),
                          bottomLeft: Radius.circular(40.0))),
                  callback: () {
                    return Navigator.of(context)
                        .push(MaterialPageRoute(builder: (c) {
                      return SignUpLoginScreen("Sign up");
                    }));
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        fontFamily: GoogleFonts.tenorSans().fontFamily),
                  ),
                  elevation: 10,
                  shadowColor: Colors.transparent,
                  gradient:
                      LinearGradient(colors: [Colors.deepPurple, Colors.cyan]),
                ),
                GradientButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40.0),
                          bottomRight: Radius.circular(40.0))),
                  callback: () async {
                    // UserRepository().signUp("s","d");
                    return Navigator.of(context)
                        .push(MaterialPageRoute(builder: (c) {
                      return SignUpLoginScreen("Login");
                    }));
                  },
                  elevation: 10,
                  shadowColor: Colors.transparent,
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontFamily: GoogleFonts.tenorSans().fontFamily),
                  ),
                  gradient:
                      LinearGradient(colors: [Colors.deepPurple, Colors.cyan]),
                )
              ],
            ))
      ],
    ));
  }
}
