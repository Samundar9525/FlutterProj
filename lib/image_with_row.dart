import 'package:flutter/material.dart';

class myapp4 extends StatefulWidget {
  const myapp4({Key? key}) : super(key: key);

  @override
  _myapp4State createState() => _myapp4State();
}

class _myapp4State extends State<myapp4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("image and row demo")),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello Sam", textScaleFactor: 3.0,),
            SizedBox(width: 40.0),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.teal,
                onSurface: Colors.red,
                textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                ),
              ),
              onPressed: () {
                print('Pressed');
              },
              child: Text("Press me"),
            )
          ],
        ),
      ),
    );
  }
}
