import 'package:argo/frontend/routes/home/home_route.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class MainScaffold extends StatelessWidget {
  const MainScaffold({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeRoute(),
      backgroundColor: Colors.transparent,
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
        color: Color.fromRGBO(18, 18, 18, 1),
        height: 60,
        animationDuration: Duration(milliseconds: 130),
        backgroundColor: Colors.transparent,
        items: <Widget>[
          // Home: index=0
          Icon(
            Icons.home,
            color: Colors.white,
          ),

          // Search: index=1
          Icon(
            Icons.search,
            color: Colors.white,
          ),

          // Add: : index=2
          Icon(
            Icons.add,
            color: Colors.white,
          ),

          // Notifications: : index=3
          Icon(
            Icons.remove_red_eye,
            color: Colors.white,
          ),

          // UserProfile: : index=4
          Icon(
            Icons.person,
            color: Colors.white,
          ),
        ],
        onTap: (int index) {
          // TODO: add functionality
        },
      ),
    );
  }
}
