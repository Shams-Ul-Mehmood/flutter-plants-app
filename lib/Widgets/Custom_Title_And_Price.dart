import 'package:flutter/material.dart';

import '../Screens/Constants.dart';

class Custom_Title_And_Price extends StatelessWidget
{
  final String country, title;
  final int price;

  const Custom_Title_And_Price({super.key, required this.country, required this.title, required this.price});

  @override
  Widget build(BuildContext buildContext)
  {
    return Padding(
      padding: const EdgeInsets.symmetric( horizontal: defaultPadding,),
      child: Row(
        children: [
          RichText(text: TextSpan(
            children: [
              TextSpan(text: "$title\n", style: Theme.of(buildContext).textTheme.headline4!.copyWith(color: customTextColor, fontWeight: FontWeight.bold, )),
              TextSpan(text: country, style: TextStyle( fontSize: 20.0, color: Colors.green, fontWeight: FontWeight.w500, ),),
            ],
          ),
          ),
          Spacer(),
          Text("\$${price}", style: Theme.of(buildContext).textTheme.headline5!.copyWith(color: customPrimaryColor),),
        ],
      ),
    );
  }
}