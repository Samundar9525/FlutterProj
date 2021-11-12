import 'package:flutter/material.dart';
import 'package:femo/homepage.dart';
import 'package:femo/row_col.dart';
import 'package:femo/stateful_widget.dart';
import 'package:femo/image_with_row.dart';

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
      home: myapp4(),
    );
  }
}

