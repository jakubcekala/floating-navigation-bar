import 'package:flutter/material.dart';

void main() {
  runApp(NavigationBarApp());
}

class NavigationBarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Floating Navigation Bar',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(28, 28, 28, 1),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Floating Navigation Bar"),
      ),
      body: Container(),
    );
  }
}
