import 'package:argo/frontend/routes/profile/components/search_app_bar.dart';
import 'package:flutter/material.dart';

class ProfileRoute extends StatelessWidget {
  final String profileName;
  const ProfileRoute({@required this.profileName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProfileAppBar(),
      body: Container(
        color: Colors.black,
        child: Text('Profile'),
      ),
    );
  }
}
