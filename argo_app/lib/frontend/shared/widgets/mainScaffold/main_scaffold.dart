import 'package:argo/frontend/routes/create/create_route.dart';
import 'package:argo/frontend/routes/home/home_route.dart';
import 'package:argo/frontend/routes/load/load_route.dart';
import 'package:argo/frontend/routes/modify/modify_route.dart';
import 'package:argo/frontend/routes/notifications/notifications_route.dart';
import 'package:argo/frontend/routes/profile/profile_route.dart';
import 'package:argo/frontend/shared/util/route_provider.dart';
import 'package:argo/frontend/shared/util/route_names.dart';
import 'package:argo/frontend/routes/search/search_route.dart';
import 'package:argo/frontend/shared/widgets/mainScaffold/add_menu.dart';
import 'package:argo/frontend/shared/widgets/navigation_bar.dart';
import 'package:argo/provider/navigation_state_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScaffold extends StatelessWidget {
  const MainScaffold({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Consumer<NavigationState>(
            builder: (_, navigationState, __) {
              RouteNames _route = navigationState.currentRoute;
              if (_route == RouteNames.add) _route = navigationState.oldRoute;
              return routeProvider(_route);
            },
          ),
          AddMenu()
        ],
      ),
      backgroundColor: Colors.transparent,
      extendBody: true,
      bottomNavigationBar: NavigationBar(),
    );
  }
}
