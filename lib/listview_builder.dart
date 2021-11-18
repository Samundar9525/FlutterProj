import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'food_detail.dart';

class myapp5 extends StatefulWidget {
  const myapp5({Key? key}) : super(key: key);

  @override
  _myapp5State createState() => _myapp5State();
}

class _myapp5State extends State<myapp5> {
  var api = "https://www.themealdb.com/api/json/v1/1/filter.php?c=Seafood";
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
        appBar: AppBar(title: Text("ListView Builder")),
        body: Center(
          child: res != null
              ? ListView.builder(
                  itemCount: food.length,
                  itemBuilder: (context, index) {
                    var foods = food[index];
                    return ListTile(
                      trailing: Icon(Icons.circle),
                      leading: Hero(
                          tag: foods["idMeal"],
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                NetworkImage(foods['strMealThumb']),
                          )),
                      title: Text("${foods["strMeal"]}",
                          style: TextStyle(fontSize: 20, color: Colors.blue)),
                      subtitle: Text("id: ${foods["idMeal"]}",
                          style: TextStyle(fontSize: 14, color: Colors.black)),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => fooddetail(foods: foods),
                            fullscreenDialog: true,
                          ),
                        );
                      },
                    );
                  },
                )
              : CircularProgressIndicator(),
        ));
  }
}




