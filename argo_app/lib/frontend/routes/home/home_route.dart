import 'package:argo/frontend/routes/home/components/home_app_bar.dart';
import 'package:argo/frontend/shared/widgets/post_widget.dart';
import 'package:flutter/material.dart';

class HomeRoute extends StatelessWidget {
  const HomeRoute({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: Container(
        color: Colors.black,
        child: ListView.builder(
          itemBuilder: (_, __) => Post(),
        ),
      ),
    );
  }
}

//
