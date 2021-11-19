import 'dart:convert';
import 'package:femo/util/itemlist.dart';
import 'package:femo/widgets/Item_Widget.dart';
import 'package:femo/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class griditems extends StatefulWidget {
  const griditems({Key? key}) : super(key: key);

  @override
  _griditemsState createState() => _griditemsState();
}

class _griditemsState extends State<griditems> {
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
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grid Menu"),),
      body:Padding(
        padding: const EdgeInsets.all(20.0),
        child: catlogmodel.items!=null && catlogmodel.items.isNotEmpty?
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16
            ),
            itemBuilder: (context,index){
              final item=catlogmodel.items[index];
              print(index);
              return Card(
                clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: GridTile(
                      header: Container(
                          child: Text( item.title,style: TextStyle(color: Colors.white,fontSize: 9,),),
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                          ),
                      ),
                      child:Image.network(item.image,fit: BoxFit.scaleDown,),
                      footer:Container(

                        child: Text( "₹ ${item.price.toString()}",style: TextStyle(color: Colors.white,fontSize: 9,),),
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                        ),
                      ),


                  )

              );

            }
    ):Center(child: CircularProgressIndicator(),),
      ) ,
      drawer: MyDrawer(),
    );
  }
}
