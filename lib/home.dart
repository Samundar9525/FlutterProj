import 'dart:convert';

import 'package:femo/util/itemlist.dart';
import 'package:femo/widgets/Item_Widget.dart';
import 'package:femo/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {

  @override
  void initState() {
    super.initState();
    loaddata();
  }
  loaddata()async{
    // print("Hello sam");
    var jsondata=await rootBundle.loadString("assets/images/shopping.json");
    var decodedata=jsonDecode(jsondata);
    var product=decodedata["products"];
    catlogmodel.items =List.from(product).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {

    });
    print(product);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home"),),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: catlogmodel.items!=null && catlogmodel.items.isNotEmpty?  ListView.builder(
          itemCount: catlogmodel.items.length,
          itemBuilder:(context,index){
            return ItemWidget(
                item: catlogmodel.items[index],
            );
          } ,

        ):Center(child: CircularProgressIndicator(),),
      ),
    drawer: MyDrawer(),

    );
  }
}
