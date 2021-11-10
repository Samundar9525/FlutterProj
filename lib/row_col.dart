import 'package:flutter/material.dart';

class myapp2 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title:Text("ROW and Column CHECK")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: <Widget>[
            Text("THIS IS COLUMN DEMO",style: TextStyle(fontSize: 15.30,  color: Colors.teal,),),
            ElevatedButton(onPressed: (){}, child:Text("PRESS ME")),

            Text("THIS IS COLUMN DEMO",style: TextStyle(fontSize: 25.30,  color: Colors.teal,),),
            ElevatedButton(onPressed: (){}, child:Text("PRESS ME")),

            Text("THIS IS COLUMN DEMO",style: TextStyle(fontSize: 35.30,  color: Colors.teal,),),
            ElevatedButton(onPressed: (){}, child:Text("PRESS ME")),

            Text("THIS IS COLUMN DEMO",style: TextStyle(fontSize: 45.30,  color: Colors.teal,),),
            ElevatedButton(onPressed: (){}, child:Text("PRESS ME")),
          ],
        ),
      )
    );
  }
}