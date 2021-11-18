import 'package:flutter/material.dart';

class fooddetail extends StatelessWidget {
  final foods;
  const fooddetail({Key? key, @required this.foods}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(foods['strMeal']),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
                tag: foods["idMeal"],
                child: CircleAvatar(
                  radius: 150.0,
                  backgroundImage: NetworkImage(foods['strMealThumb']),
                )),
            SizedBox(
              height: 30.0,
            ),
            Text("ID :${foods['idMeal']}",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                )),
            SizedBox(
              height: 10.0,
            ),
            Text("Item :${foods['strMeal']}",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ))
          ],
        ),
      ),
    );
  }
}
