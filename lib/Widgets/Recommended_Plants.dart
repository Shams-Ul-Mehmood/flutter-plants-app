import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:plant_app/Screens/Details_Screen.dart';

import 'Recommended_Plant_Card.dart';

class Recommended_Plants extends StatelessWidget
{
  @override
  Widget build(BuildContext buildContext)
  {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          InkWell( onTap: () {
            Navigator.push(buildContext, MaterialPageRoute(builder: (buildContext) => Details_Screen() ));
          }, child: Recommended_Plant_Card(image: "assets/images/plant10.jpeg", country: "Russia", title: "Samantha", price: 550,)),

          GestureDetector( onTap: (){
            Navigator.push(buildContext, MaterialPageRoute(builder: (buildContext) => Details_Screen() ));
          }, child: Recommended_Plant_Card(image: "assets/images/plant0.jpeg", country: "Russia", title: "Luprin", price: 250,)),

          InkWell( onTap: (){
            Navigator.push(buildContext, MaterialPageRoute(builder: (buildContext) => Details_Screen() ));
          }, child: Recommended_Plant_Card(image: "assets/images/plant1.jpeg", country: "Russia", title: "Lawastha", price: 350,)),

          GestureDetector( onTap: (){
            Navigator.push(buildContext, MaterialPageRoute(builder: (buildContext) => Details_Screen() ));
          }, child: Recommended_Plant_Card(image: "assets/images/plant8.jpeg", country: "Russia", title: "Noseena", price: 150,)),

          InkWell( onTap: (){
            Navigator.push(buildContext, MaterialPageRoute(builder: (buildContext) => Details_Screen() ));
          }, child: Recommended_Plant_Card(image: "assets/images/plant3.jpeg", country: "Russia", title: "Monatha", price: 100,)),

          GestureDetector( onTap: (){
            Navigator.push(buildContext, MaterialPageRoute(builder: (buildContext) => Details_Screen() ));
          }, child: Recommended_Plant_Card(image: "assets/images/plant9.jpeg", country: "Russia", title: "Lawastha", price: 350,)),

          InkWell( onTap: (){
            Navigator.push(buildContext, MaterialPageRoute(builder: (buildContext) => Details_Screen() ));
          }, child: Recommended_Plant_Card(image: "assets/images/plant5.jpeg", country: "Russia", title: "Samantha", price: 550,)),

          GestureDetector( onTap: (){
            Navigator.push(buildContext, MaterialPageRoute(builder: (buildContext) => Details_Screen() ));
          }, child: Recommended_Plant_Card(image: "assets/images/plant6.jpeg", country: "Russia", title: "Luprin", price: 250,)),

          InkWell( onTap: (){
            Navigator.push(buildContext, MaterialPageRoute(builder: (buildContext) => Details_Screen() ));
          }, child: Recommended_Plant_Card(image: "assets/images/plant7.jpeg", country: "Russia", title: "Lawastha", price: 350,)),

        ],
      ),
    );
  }
}