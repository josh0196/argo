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
          body: Stack(
            children: [
              Consumer<NavigationState>(
                builder: (_, navigationState, __) {
                  RouteNames _route = navigationState.currentRoute;
                  if (_route == RouteNames.add)
                    _route = navigationState.oldRoute;
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
              Align(
                child: Consumer<NavigationState>(
                  builder: (_, navigationState, __) => AnimatedContainer(
                      duration: Duration(milliseconds: 120),
                      padding: EdgeInsets.zero,
                      decoration: BoxDecoration(
                          color: Colors.orange, shape: BoxShape.circle),
                      height: navigationState.currentRoute == RouteNames.add
                          ? 200
                          : 0,
                      width: 200,
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            top: 70,
                            left: 10,
                            child: IconButton(
                              icon: Icon(
                                Icons.add_circle,
                                size: 40,
                              ),
                              onPressed: () {},
                            ),
                          ),
                          Positioned(
                            top: 70,
                            right: 10,
                            child: IconButton(
                              icon: Icon(
                                Icons.add_circle,
                                size: 40,
                              ),
                              onPressed: () {},
                            ),
                          ),
                          Positioned(
                            top: 10,
                            right: 80,
                            child: IconButton(
                              icon: Icon(
                                Icons.add_circle,
                                size: 40,
                              ),
                              onPressed: () {},
                            ),
                          )
                        ],
                      )),
                ),
                alignment: Alignment.bottomCenter,
              )
            ],
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
