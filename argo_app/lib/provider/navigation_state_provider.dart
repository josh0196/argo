import 'package:argo/frontend/routes/route_names.dart';
import 'package:flutter/material.dart';

class NavigationState with ChangeNotifier {
  RouteNames _currentRoute = RouteNames.home;
  RouteNames _oldRoute = RouteNames.home;

  RouteNames get currentRoute => _currentRoute;
  RouteNames get oldRoute => _oldRoute;

  set currentRoute(RouteNames route) {
    if (route != _currentRoute) {
      _oldRoute = _currentRoute;
      _currentRoute = route;
      notifyListeners();
      print('Navigated to ' + currentRoute.toString());
    } else if (route == RouteNames.add) {
      print("current Route: " + _currentRoute.toString());
      print("old Route: " + _oldRoute.toString());
      _currentRoute = _oldRoute;
      notifyListeners();
    }
  }
}
