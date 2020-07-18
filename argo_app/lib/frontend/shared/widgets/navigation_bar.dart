import 'package:argo/frontend/shared/util/route_names.dart';
import 'package:argo/provider/navigation_state_provider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationState>(
      builder: (_, navigationState, __) {
        return CurvedNavigationBar(
          index: navigationState.currentRoute.index > 4
              ? 2
              : navigationState.currentRoute.index,
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
              navigationState.currentRoute == RouteNames.add
                  ? Icons.close
                  : Icons.add,
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
            if (navigationState.currentRoute == RouteNames.create ||
                navigationState.currentRoute == RouteNames.load ||
                navigationState.currentRoute == RouteNames.modify)
              navigationState.pop();
            else
              navigationState.currentRoute = RouteNames.values[index];
          },
        );
      },
    );
  }
}
