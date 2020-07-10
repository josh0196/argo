import 'package:argo/frontend/routes/search/components/search_app_bar.dart';
import 'package:flutter/material.dart';

class SearchRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchAppBar(),
      body: Container(
        color: Colors.black,
        child: Text('Search'),
      ),
    );
  }
}
