import 'package:flutter/material.dart';
import 'package:femo/homepage.dart';
import 'package:femo/row_col.dart';
import 'package:femo/stateful_widget.dart';
import 'package:femo/image_with_row.dart';
import 'package:femo/listview_builder.dart';
import 'grid view.dart';
import 'login.dart';
import 'package:femo/util/routes.dart';
import 'package:femo/home.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo ba',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: MyRoutes.homeroute,
      routes: {
        MyRoutes.loginroute:(context)=>login(),
        MyRoutes.homeroute:(context)=>home(),
    },
    );
  }
}

