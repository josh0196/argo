import 'package:argo/frontend/shared/widgets/main_scaffold.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ArgoApp());
}

class ArgoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ARgo',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color.fromRGBO(18, 18, 18, 1),
        textTheme: Typography.whiteMountainView,
        primaryIconTheme: IconThemeData(color: Colors.black),
      ),
      home: MainScaffold(),
    );
  }
}
