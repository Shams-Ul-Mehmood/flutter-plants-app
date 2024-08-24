import 'package:flutter/material.dart';

import '../Screens/Constants.dart';

class Recommended_Plant_Card extends StatelessWidget
{
  final String country, title, image;
  final int price;

  const Recommended_Plant_Card({super.key, required this.country, required this.title, required this.image, required this.price,});

  @override
  Widget build(BuildContext buildContext)
  {
    Size size = MediaQuery.of(buildContext).size;

    return Container(
      margin: EdgeInsets.only( left: defaultPadding / 10, top: defaultPadding / 8, bottom: defaultPadding * 12.5, ),
      width: size.width * 0.363,
      child: Column(
        children: [
          Image.asset(image, width: MediaQuery.of(buildContext).size.width / 2.7899, height: MediaQuery.of(buildContext).size.height / 4.1, fit: BoxFit.cover,),
          // InkWell(
          //   onTap: (){} ,
          //   child:
            Container(
              width: MediaQuery.of(buildContext).size.width / 2.8,
              padding: EdgeInsets.all(defaultPadding / 6),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10.0), bottomRight: Radius.circular(10.0), ),
                boxShadow: [
                  BoxShadow( offset: Offset(0,10), blurRadius: 50.0, color: customPrimaryColor.withOpacity(0.5), ),
                ],
              ),
              child: Row(
                children: [
                  RichText(text: TextSpan(
                    children: [
                      TextSpan(text: "$title\n".toUpperCase(), style: Theme.of(buildContext).textTheme.button,),
                      TextSpan(text: "$country".toUpperCase(), style: TextStyle( color: customPrimaryColor.withOpacity(0.5), ), ),
                    ],
                  ),
                  ),
                  Spacer(),
                  Text("\$${price}",style: Theme.of(buildContext).textTheme.button!.copyWith(color: customPrimaryColor),),
                ],
              ),
            ),
        //  ),
        ],
      ),
    );
  }
}