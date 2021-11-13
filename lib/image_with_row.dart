import 'package:flutter/material.dart';

class myapp4 extends StatefulWidget {
  const myapp4({Key? key}) : super(key: key);

  @override
  _myapp4State createState() => _myapp4State();
}

class _myapp4State extends State<myapp4> {
  @override
  String text1="Samundar Singh";
  String text2="Mukesh Patel";
  String text3="Abhijeet Chakar.";
  String text4="Sabbir Alam  ";

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("image and row demo")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSF1D-BYc9SEJFeEeftjtdD2ONIq0wjfW_P2g&usqp=CAU",
                  fit:BoxFit.contain,
                  height:50,
                  width:50,
                ),
                SizedBox(width: 15.0),
                Text(text1, textScaleFactor: 2.0,),

                SizedBox(width: 65.0),
                FlatButton(onPressed: (){
                  text1="Calling ...";
                  setState(() {
                  });
                }, child: Text("Call"),color: Colors.teal,textColor: Colors.white,)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSF1D-BYc9SEJFeEeftjtdD2ONIq0wjfW_P2g&usqp=CAU",
                  fit:BoxFit.contain,
                  height:50,
                  width:50,
                ),
                SizedBox(width: 15.0),
                Text(text2, textScaleFactor: 2.0,),
                SizedBox(width: 65.0),
                FlatButton(onPressed: (){
                  text2="Calling ...";
                  print(text1);
                  setState(() {
                  });
                }, child: Text("Call"),color: Colors.teal,textColor: Colors.white,)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSF1D-BYc9SEJFeEeftjtdD2ONIq0wjfW_P2g&usqp=CAU",
                  fit:BoxFit.contain,
                  height:50,
                  width:50,
                ),
                SizedBox(width: 15.0),
                Text(text3, textScaleFactor: 2.0,),
                SizedBox(width: 65.0),
                FlatButton(onPressed: (){
                  text3="Calling ...";
                  print(text1);
                  setState(() {
                  });
                }, child: Text("Call"),color: Colors.teal,textColor: Colors.white,)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSF1D-BYc9SEJFeEeftjtdD2ONIq0wjfW_P2g&usqp=CAU",
                  fit:BoxFit.contain,
                  height:50,
                  width:50,
                ),
                SizedBox(width: 15.0),
                Text(text4, textScaleFactor: 2.0,),
                SizedBox(width: 65.0),
                FlatButton(onPressed: (){
                  text4="Calling ...";
                  print(text1);
                  setState(() {
                  });
                }, child: Text("Call"),color: Colors.teal,textColor: Colors.white,)
              ],
            ),


          ],
        )
      ),
    );
  }
}
