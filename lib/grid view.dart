import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'food_detail.dart';

class myapp6 extends StatefulWidget {
  const myapp6({Key? key}) : super(key: key);

  @override
  _myapp6State createState() => _myapp6State();
}

class _myapp6State extends State<myapp6> {
  var api = "https://www.themealdb.com/api/json/v1/1/filter.php?c=Vegetarian";
  var res, food;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async {
    res = await http.get(Uri.parse(api));
    food = jsonDecode(res.body)["meals"];
    print(food);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GridView Builder")),
      body: Center(
        child: res != null
            ? GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                shrinkWrap: true,
                children: List.generate(food.length, (index) {
                  var foods = food[index];
                  return Container(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        child: Text(
                          "Available",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w700),
                          textScaleFactor: 1.5,
                        ),
                        backgroundImage: NetworkImage(foods['strMealThumb']),
                      ),
                    ),
                  );
                }),
              )
            : CircularProgressIndicator(),
      ),
    );
  }
}
