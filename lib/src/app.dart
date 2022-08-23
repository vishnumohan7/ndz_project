import 'package:flutter/material.dart';
import 'package:ndz_project/src/pages/home_page.dart';

class NdzApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ndz Project App",
      theme: ThemeData(
        primaryColor: Colors.lightGreen,



      ),
      home: HomePage(),
    );
  }
}
