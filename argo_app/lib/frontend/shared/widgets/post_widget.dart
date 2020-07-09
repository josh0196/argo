import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: <Widget>[
                Icon(
                  // TODO: Add proper profile image
                  Icons.account_circle,
                  color: Colors.white,
                  size: 40,
                ),
                SizedBox(width: 5),
                Text('Poster'),
                SizedBox(width: 10),
                Text(
                  'Follow',
                  style: TextStyle(color: Colors.blue),
                )
              ],
            ),
          ),
          Container(
            // TODO: ADD PHOTO
            height: 370,
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: <Widget>[
                IconButton(
                  padding: EdgeInsets.zero,
                  icon: Icon(
                    Icons.remove_red_eye,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  icon: Icon(
                    Icons.mode_comment,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  icon: Icon(
                    Icons.send,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
