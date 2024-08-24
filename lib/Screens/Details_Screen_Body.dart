import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:plant_app/Screens/Constants.dart';
import 'package:plant_app/Widgets/Custom_Icons_Card.dart';
import 'package:plant_app/Widgets/Custom_Title_And_Price.dart';
import 'package:plant_app/Widgets/Images_And_Icons.dart';

class Details_Screen_Body extends StatelessWidget
{
  @override
  Widget build(BuildContext buildContext)
  {
    Size size = MediaQuery.of(buildContext).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.only(bottom: defaultPadding * 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Images_And_Icons(),
          Custom_Title_And_Price(title: "Angelica", country: "Russia", price: 440,),
          SizedBox(height: defaultPadding,),
          Row(
            children: [
              InkWell(
                onTap: (){

                },
                child: Container(
                  width: size.width / 2,
                  height: 85,
                  decoration: BoxDecoration(
                    color: customPrimaryColor,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),),
                  ),
                  child: Center(child: Text("Buy Now",style: TextStyle( fontWeight: FontWeight.bold, color: Colors.white, ),)),
                ),
              ),

              Expanded(
                child: InkWell(
                  onTap: (){
                
                  },
                  child: Container(
                    width: size.width / 2,
                    height: 85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),),
                    ),
                    child: Center(child: Text("Description",style: TextStyle( fontWeight: FontWeight.bold, color: customTextColor, ),)),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}