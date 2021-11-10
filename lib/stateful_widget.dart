import 'package:flutter/material.dart';

class myapp3 extends StatefulWidget {
  const myapp3({Key? key}) : super(key: key);
  @override
  _myapp3State createState() => _myapp3State();
}

class _myapp3State extends State<myapp3> {
  @override
  String text="Welcome Sam";
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stateful_Demo"),) ,
      body:Center(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text,textScaleFactor: 2.0,),
          SizedBox(
            height: 30.0,
          ),
          FlatButton(
            color: Colors.blue,
            textColor: Colors.white,
            onPressed: (){
              text="Tune Daba Diya Yaar";
              setState(() {
              });
            },
            child: Text("DABA YAAR"),
          )
        ],
      )
    )
    );
  }
}
