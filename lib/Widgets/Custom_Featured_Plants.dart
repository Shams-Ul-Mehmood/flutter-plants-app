import 'package:flutter/material.dart';

import 'Featured_Plants.dart';

class Custom_Featured_Plants extends StatelessWidget
{
  @override
  Widget build(BuildContext buildContext)
  {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Featured_Plants(image: "assets/images/plant0.jpeg",),
          Featured_Plants(image: "assets/images/plant1.jpeg",),
          Featured_Plants(image: "assets/images/plant2.jpeg",),
          Featured_Plants(image: "assets/images/plant3.jpeg",),
          Featured_Plants(image: "assets/images/plant4.jpeg",),
          Featured_Plants(image: "assets/images/plant5.jpeg",),
          Featured_Plants(image: "assets/images/plant6.jpeg",),
          Featured_Plants(image: "assets/images/plant7.jpeg",),
          Featured_Plants(image: "assets/images/plant8.jpeg",),
          Featured_Plants(image: "assets/images/plant9.jpeg",),
          Featured_Plants(image: "assets/images/plant10.jpeg",),
          Featured_Plants(image: "assets/images/plant11.jpeg",),
          Featured_Plants(image: "assets/images/plant12.jpeg",),
          Featured_Plants(image: "assets/images/plant13.jpeg",),
          Featured_Plants(image: "assets/images/plant14.jpeg",),
          Featured_Plants(image: "assets/images/plant15.jpeg",),
        ],
      ),
    );
  }
}