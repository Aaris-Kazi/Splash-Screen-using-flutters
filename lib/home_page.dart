import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'this home page',
      theme: new ThemeData.dark(),
      home: Homies(),
    );
  }

}

class Homies extends StatefulWidget {
  @override
  _HomiesState createState() => _HomiesState();
}

class _HomiesState extends State<Homies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new AppBar(
        title: new Text('Home Screen'),
      ),
    );
  }
}