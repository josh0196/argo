import 'package:argo/frontend/routes/home/home_route.dart';
import 'package:argo/frontend/routes/notifications/notifications_route.dart';
import 'package:argo/frontend/routes/profile/profile_route.dart';
import 'package:argo/frontend/routes/route_names.dart';
import 'package:argo/frontend/routes/search/search_route.dart';
import 'package:argo/frontend/shared/widgets/navigation_bar.dart';
import 'package:argo/provider/navigation_state_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ArgoApp());
}

class ArgoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ARgo',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color.fromRGBO(18, 18, 18, 1),
        textTheme: Typography.whiteMountainView,
        primaryIconTheme: IconThemeData(color: Colors.black),
      ),
      home: ChangeNotifierProvider<NavigationState>(
        child: Scaffold(
          body: Consumer<NavigationState>(
            builder: (_, navigationState, __) {
              RouteNames _route = navigationState.currentRoute;
              if (_route == RouteNames.add) _route = navigationState.oldRoute;
              switch (_route) {
                case RouteNames.home:
                  return HomeRoute();
                case RouteNames.search:
                  return SearchRoute();
                case RouteNames.notifications:
                  return NotificationsRoute();
                case RouteNames.userProfile:
                  return ProfileRoute(
                    profileName: 'UserName',
                  );
                default:
                  print(
                      "Tried to route to unexisting route! Routing home instead...");
                  return HomeRoute();
              }
            },
          ),
          backgroundColor: Colors.transparent,
          extendBody: true,
          bottomNavigationBar: NavigationBar(),
        ),
        create: (_) => NavigationState(),
      ),
    );
  }
}
