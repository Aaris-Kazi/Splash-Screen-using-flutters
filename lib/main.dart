import 'dart:async';

import 'package:flutter/material.dart';

// import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData.dark(),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

@override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () => print('hello'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.black54),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: new Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.greenAccent[400],
                        radius: 50.0,
                        child: new Icon(
                          Icons.call,
                          size: 45.0,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 35.0)
                        ),
                        Text(
                          'WhatsApp',
                          style: new TextStyle(
                            color: Colors.greenAccent[400],
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold
                          ),
                        )
                    ],
                  ),
                ),
                flex: 2,
                ),
                Expanded(
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircularProgressIndicator(),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0)
                        ),
                      Text(
                        "Let's Chat",
                        style: new TextStyle(
                          color: Colors.green[200],
                        ),
                        )                        
                    ],
                  ), 
                  flex: 1
                  )
            ],
          )
        ],
      ),
    );
  }
}