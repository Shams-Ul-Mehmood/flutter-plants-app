import 'package:flutter/material.dart';

import '../Screens/Constants.dart';

class Custom_Title_With_Under_Line extends StatelessWidget
{
  final String text;

  const Custom_Title_With_Under_Line({super.key, required this.text});

  @override
  Widget build(BuildContext buildContext)
  {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: defaultPadding / 4,),
            child: Text( text , style: TextStyle( fontSize: 20.0, fontWeight: FontWeight.bold, ),),
          ),
          Positioned(
            left: 0.0,
            right: 0.0,
            bottom: 0.0,
            child: Container(
              margin: EdgeInsets.only( right: defaultPadding / 4, ),
              height: 4.0,
              color: customPrimaryColor.withOpacity(0.2),
            ),
          ),
        ],
      ),
    );
  }
}