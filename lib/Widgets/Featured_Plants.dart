import 'package:flutter/material.dart';

import '../Screens/Constants.dart';

class Featured_Plants extends StatelessWidget
{
  final String image;

  const Featured_Plants({super.key, required this.image,});

  @override
  Widget build(BuildContext buildContext)
  {
    Size size = MediaQuery.of(buildContext).size;

    return GestureDetector(
      onTap: (){},
      child: Container(
        margin: EdgeInsets.only(left: defaultPadding, top: defaultPadding / 4, bottom: defaultPadding / 4,),
        width: size.width * 0.3,
        height: 400,
        transform: Matrix4.translationValues(1.5, 2.5, 3.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          image: DecorationImage(
            image: AssetImage(image,),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}