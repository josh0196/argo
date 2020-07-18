import 'package:argo/frontend/shared/util/route_names.dart';
import 'package:argo/provider/navigation_state_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddMenu extends StatelessWidget {
  const AddMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Consumer<NavigationState>(
        builder: (_, navigationState, __) => AnimatedContainer(
            duration: Duration(milliseconds: 120),
            padding: EdgeInsets.zero,
            decoration:
                BoxDecoration(color: Colors.orange, shape: BoxShape.circle),
            height: navigationState.currentRoute == RouteNames.add ? 200 : 0,
            width: 200,
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 70,
                  left: 10,
                  child: Column(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.file_upload,
                          size: 40,
                        ),
                        onPressed: () =>
                            navigationState.currentRoute = RouteNames.load,
                      ),
                      Text('load')
                    ],
                  ),
                ),
                Positioned(
                  top: 70,
                  right: 10,
                  child: Column(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.edit,
                          size: 40,
                        ),
                        onPressed: () =>
                            navigationState.currentRoute = RouteNames.modify,
                      ),
                      Text('Modify')
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.add_circle,
                          size: 40,
                        ),
                        onPressed: () =>
                            navigationState.currentRoute = RouteNames.create,
                      ),
                      Text('Create')
                    ],
                  ),
                ),
              ],
            )),
      ),
      alignment: Alignment.bottomCenter,
    );
  }
}
