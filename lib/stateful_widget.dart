import 'package:flutter/material.dart';

class myapp3 extends StatefulWidget {
  const myapp3({Key? key}) : super(key: key);
  @override
  _myapp3State createState() => _myapp3State();
}

class _myapp3State extends State<myapp3> {
  @override
  String text1='Welcome Sam';
  String text2='WELCOME SAMUNDAR';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stateful_Demo"),) ,
      body:Center(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text1,textScaleFactor: 2.0,),
          SizedBox(
            height: 30.0,
          ),
          FlatButton(
            color: Colors.blue,
            textColor: Colors.white,
            onPressed: (){
              text2='WELCOME SAMUNDAR';
              text1="Button is Pressed";
              setState(() {
              });
            },
            child: Text("Press me"),
          ),

          SizedBox(
            height: 200.0,
          ),

          Text(text2,textScaleFactor: 2.0,),
          SizedBox(
            height: 30.0,
          ),
          FlatButton(
            color: Colors.blue,
            textColor: Colors.white,
            onPressed: (){
              text1='Welcome Sam';
              text2="Phir Button is Pressed";
              setState(() {
              });
            },
            child: Text("Press me"),
          )


        ],
      )
    )
    );
  }
}
