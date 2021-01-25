import 'package:floating_navigation_bar/widgets/floating_navigation_bar.dart';
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

class _MyHomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Floating Navigation Bar"),
      ),
      body: Stack(
        children: [
          TabBarView(
            controller: _tabController,
            children: [
              Container(
                color: Color.fromRGBO(250, 250, 250, 1),
                child: Center(
                  child: Text("Home"),
                ),
              ),
              Container(
                color: Color.fromRGBO(220, 220, 220, 1),
                child: Center(
                  child: Text("Favourites"),
                ),
              ),
              Container(
                color: Color.fromRGBO(200, 200, 200, 1),
                child: Center(
                  child: Text("Profile"),
                ),
              ),
            ],
          ),
          FloatingNavigationBar(_tabController),
        ],
      ),
    );
  }
}
