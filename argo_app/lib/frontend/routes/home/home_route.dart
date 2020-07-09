import 'package:argo/frontend/shared/widgets/post_widget.dart';
import 'package:flutter/material.dart';

class HomeRoute extends StatelessWidget {
  const HomeRoute({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('ARgo'),
        leading: IconButton(
          // Stories
          icon: Icon(
            Icons.photo_camera,
            color: Colors.white,
          ),
          onPressed: () {
            // TODO: add functionality
          },
        ),
        actions: [
          // Chats
          IconButton(
            icon: Icon(
              Icons.send,
              color: Colors.white,
            ),
            onPressed: () {
              // TODO: add functionality
            },
          ),
        ],
      ),
      body: Container(
          color: Colors.black,
          child: ListView.builder(itemBuilder: (_, __) => Post())),
    );
  }
}
