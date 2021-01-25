import 'package:flutter/material.dart';

class FloatingNavigationBar extends StatelessWidget {
  final TabController _tabController;

  const FloatingNavigationBar(this._tabController);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      left: 0,
      bottom: 0,
      child: Container(
        margin: EdgeInsets.only(bottom: 32, left: 85, right: 85),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 7,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: TabBar(
            physics: PageScrollPhysics(),
            tabs: <Widget>[
              Icon(Icons.home_outlined),
              Icon(Icons.favorite_border),
              Icon(Icons.perm_identity_outlined),
            ],
            controller: _tabController,
            indicator: UnderlineTabIndicator(
                borderSide: BorderSide(color: Colors.white, width: 2)),
          ),
        ),
      ),
    );
  }
}
