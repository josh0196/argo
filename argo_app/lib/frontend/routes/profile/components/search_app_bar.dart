import 'package:flutter/material.dart';

class ProfileAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }
}
