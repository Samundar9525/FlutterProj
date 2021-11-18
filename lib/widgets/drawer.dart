import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blue,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
              accountName: Text("Pikachu Kumar"),
              accountEmail: Text("pokemonCartoon@gmail.com"),
                  currentAccountPicture: CircleAvatar(backgroundImage: AssetImage("assets/images/pikachu.png",),),

            )),

            ListTile(
              leading: Icon(CupertinoIcons.home,color: Colors.white,),
              title: Text("Home",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),textScaleFactor: 1.3,),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled,color: Colors.white,),
              title: Text("Profile",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),textScaleFactor: 1.3,),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.phone,color: Colors.white,),
              title: Text("Contact",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),textScaleFactor: 1.3,),
            ),ListTile(
              leading: Icon(CupertinoIcons.info,color: Colors.white,),
              title: Text("About Us",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),textScaleFactor: 1.3,),
            )

          ],
        ),
      )
    );
  }
}

