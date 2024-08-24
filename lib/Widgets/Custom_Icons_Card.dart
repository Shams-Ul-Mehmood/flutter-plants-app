import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Screens/Constants.dart';

class Custom_Icons_Card extends StatelessWidget
{
  // final String icon;
  //
  // const Custom_Icons_Card({super.key, required this.icon});

  @override
  Widget build(BuildContext buildContext)
  {
    Size size = MediaQuery.of(buildContext).size;

    return Container(
      width: 65.0,
      height: 65.0,
      padding: EdgeInsets.all(defaultPadding / 2.0),
      margin: EdgeInsets.symmetric( vertical: size.height * 0.03, ),
      decoration: BoxDecoration(
        color: customBackgroundColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow( offset: Offset( 0.0, 10.0), blurRadius: 25, color: customPrimaryColor.withOpacity(0.25), ),
          BoxShadow( offset: Offset(-15, -15), blurRadius: 20, color: Colors.white, ),
        ],
      ),
      child: Icon( Icons.brightness_5_outlined , color: customPrimaryColor,),
      // child: SvgPicture.asset(icon),
    );
  }
}