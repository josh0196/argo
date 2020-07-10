import 'package:argo/frontend/routes/notifications/components/notifications_app_bar.dart';
import 'package:flutter/material.dart';

class NotificationsRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NotificationsAppBar(),
      body: Container(
        color: Colors.black,
        child: Text('Notifications'),
      ),
    );
  }
}
