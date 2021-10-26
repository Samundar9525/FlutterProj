import 'package:flutter/material.dart';

class myapp2 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title:Text("ROW and Column CHECK")),
      body: Center(
        child:  Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:<Widget>[
              Container(
                decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(10),
                    color:Colors.green
                ),
                child: Text("GeeksForGeeks",style: TextStyle(color:Colors.white,fontSize:25),),
              ),
              Container(
                decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(10),
                    color:Colors.green
                ),
                child: Text("GeeksForGeeks",style: TextStyle(color:Colors.white,fontSize:25),),
              ),
              Container(
                decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(10),
                    color:Colors.green
                ),
                child: Text("GeeksForGeeks",style: TextStyle(color:Colors.white,fontSize:25),),
              )
            ]
        ),
      )
    );
  }
}