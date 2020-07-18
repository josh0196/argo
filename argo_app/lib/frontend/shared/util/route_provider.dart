import 'package:argo/frontend/routes/create/create_route.dart';
import 'package:argo/frontend/routes/home/home_route.dart';
import 'package:argo/frontend/routes/load/load_route.dart';
import 'package:argo/frontend/routes/modify/modify_route.dart';
import 'package:argo/frontend/routes/notifications/notifications_route.dart';
import 'package:argo/frontend/routes/profile/profile_route.dart';
import 'package:argo/frontend/routes/search/search_route.dart';
import 'package:argo/frontend/shared/util/route_names.dart';
import 'package:flutter/cupertino.dart';

Widget routeProvider(RouteNames route) {
  switch (route) {
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
    case RouteNames.load:
      return LoadRoute();
    case RouteNames.create:
      return CreateRoute();
    case RouteNames.modify:
      return ModifyRoute();
    default:
      print("Tried to route to unexisting route! Routing home instead...");
      return HomeRoute();
  }
}
