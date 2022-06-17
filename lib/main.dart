import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_first_flutter_app/ui/MyScaffold.dart';
import 'package:my_first_flutter_app/App/ProfileCard.dart';

void main() {
  runApp(new MaterialApp(
    title: "muyfirst app",
    home:Home()

  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyBlog",
      home: MyScaffold()
    );
  }
}
















class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blueGrey,
      child: Center(
          child: Text("Hello World",
            textDirection: TextDirection.ltr,
         style: TextStyle(fontSize: 55,
         fontWeight: FontWeight.w100,
         fontStyle: FontStyle.italic),
          )),


    );
  }
}



