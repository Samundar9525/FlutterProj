import 'package:femo/util/itemlist.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item}) : assert(item!=null) ,super(key: key);



  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          child: ListTile(
            leading: Image.network(item.image,),
            title: Text(item.title,style: TextStyle(fontSize: 12),),
            // subtitle: Text(item.description),
            trailing: Text("₹${(item.price*100).round()} ",style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold),textScaleFactor: 1.2,),
          ),
        ),
      ),
    );
  }
}
