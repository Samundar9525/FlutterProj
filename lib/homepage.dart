  import 'package:flutter/material.dart';
class homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Calculator"),),
      body: Center(
        child: Text("Welcome Samundar"),
      ),
    floatingActionButton: FloatingActionButton(
      elevation: 10.0,
      child: Icon(Icons.add),
      onPressed: (){
      },
    ),

      drawer: Drawer(
        child: ListView(
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal,

              ),
              child: Text(
                'Welcome Samundar',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title
                  : Text('Item 1'),
              leading
                  : Icon(Icons.add_shopping_cart), ),
            ListTile(
              title
                  : Text('Item 2'),
              leading
                  : Icon(Icons.mail), ),
          ],
        ),
      ),
      bottomNavigationBar
          : BottomNavigationBar(
          currentIndex : 0,
          fixedColor
              : Colors.green,
          items
              : [
            BottomNavigationBarItem(
                  label: ("Home"),
              icon
                  : Icon(Icons.home), ),
            BottomNavigationBarItem(
                  label:"Search",
              icon
                  : Icon(Icons.search), ),
            BottomNavigationBarItem(
              label:("Profile"),
              icon
                  : Icon(Icons.account_circle), ),
          ],
          onTap
              : (int indexOfItem){

          }),
    );
  }
}