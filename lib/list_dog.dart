import 'package:flutter/material.dart';
import 'package:testing/detail.dart';
import 'package:testing/dog.dart';

class ListDog extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ListDogState();
  }


}

class ListDogState extends State<ListDog>

{

  List<Dog> _list = [];
  ListDogState ()
  {
    _list.add(new Dog("Hachiko",3.5,"Brown",12.9,"389m away","Male","Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,, owner","images/orange_dog.png"));
    _list.add(new Dog("Skooby Doo",3.5,"Gold",12.4,"412m away","Male","Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,, owner","images/blue_dog.png"));
    _list.add(new Dog("Miss Agnes",3.5,"White",9.6,"389m away","Female","Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,, owner","images/red_dog.png"));
    _list.add(new Dog("Cyrus",3.5,"Black",8.2,"672m away","Male","Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,, owner","images/yellow_dog.png"));
    _list.add(new Dog("Shelby",3.5,"choco",14.9,"982m away","Female","Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,, owner","images/white_dog.png"));

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      Scaffold(

        body:ListView.builder(
            itemCount: _list.length,
            itemBuilder: (context,index) => ListTile(
              onTap: (){
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => DetailPage( _list[index])),
                );
              },
              title: Text(_list[index].name,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              subtitle: Text(_list[index].genre),
              leading: Hero(tag : _list[index],child: Image(image: AssetImage(_list[index].image),width: 100,height: 100,),),
            )
        ) ,
      );
  }


}