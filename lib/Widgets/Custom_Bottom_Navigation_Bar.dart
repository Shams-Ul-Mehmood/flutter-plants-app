import 'package:flutter/material.dart';

import '../Screens/Constants.dart';

class Custom_Bottom_Navigation_Bar extends StatelessWidget
{
  @override
  Widget build(BuildContext buildContext)
  {
    return Container(
      padding: EdgeInsets.only(left: defaultPadding * 2, right: defaultPadding * 2, bottom: defaultPadding,),
      height: 90.0,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow( offset: Offset( 0.0, -10.0 ), blurRadius: 35.0, color: customPrimaryColor.withOpacity(0.389), ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: (){}, icon: Icon(Icons.home_outlined, color: Colors.green, size: 50.0,),),
          IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border, color: Colors.green, size: 50.0,),),
          IconButton(onPressed: (){}, icon: Icon(Icons.person, color: Colors.green, size: 50.0,),),
        ],
      ),
    );
  }
}