import 'package:flutter/material.dart';

import 'dog.dart';

class DetailPage extends StatelessWidget {
  late Dog dog;

  DetailPage(Dog dog) {
    this.dog = dog;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Column(

          children: <Widget>[
            Center(child: Hero(tag: dog, child: Image(image: AssetImage(dog.image,),width: 200,height: 200,))) ,
            Text(dog.name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            Text(dog.description)
          ],
        )
    );
  }


}