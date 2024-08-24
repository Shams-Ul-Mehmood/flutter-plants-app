import 'package:flutter/material.dart';

import '../Screens/Constants.dart';
import 'Custom_Icons_Card.dart';

class Images_And_Icons extends StatelessWidget
{
  @override
  Widget build(BuildContext buildContext)
  {
    Size size = MediaQuery.of(buildContext).size;

    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding * 9),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric( vertical: defaultPadding * 4,),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(onPressed: (){
                        Navigator.pop(buildContext);
                      }, icon: Icon(Icons.arrow_back, ),
                        padding: EdgeInsets.symmetric(horizontal: defaultPadding,),
                      ),
                    ),
                    Spacer(),
                    Custom_Icons_Card(),
                    // Custom_Icons_Card(icon: "assets/icons/", ),
                    // Custom_Icons_Card(icon: "assets/icons/",),),
                    // Custom_Icons_Card(icon: "assets/icons/",),),
                    Container(
                      width: 65.0,
                      height: 65.0,
                      padding: EdgeInsets.all(defaultPadding / 2.0),
                      margin: EdgeInsets.symmetric( vertical: size.height * 0.002, ),
                      decoration: BoxDecoration(
                        color: customBackgroundColor,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow( offset: Offset( 0.0, 10.0), blurRadius: 25, color: customPrimaryColor.withOpacity(0.25), ),
                          BoxShadow( offset: Offset(-15, -15), blurRadius: 20, color: Colors.white, ),
                        ],
                      ),
                      child: Icon( Icons.water_drop_outlined , color: customPrimaryColor,),
                      // child: SvgPicture.asset(icon),
                    ),

                    Container(
                      width: 65.0,
                      height: 65.0,
                      padding: EdgeInsets.all(defaultPadding / 2.0),
                      margin: EdgeInsets.symmetric( vertical: size.height * 0.02, ),
                      decoration: BoxDecoration(
                        color: customBackgroundColor,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow( offset: Offset( 0.0, 10.0), blurRadius: 25, color: customPrimaryColor.withOpacity(0.25), ),
                          BoxShadow( offset: Offset(-15, -15), blurRadius: 20, color: Colors.white, ),
                        ],
                      ),
                      child: Icon( Icons.water_drop , color: customPrimaryColor,),
                      // child: SvgPicture.asset(icon),
                    ),

                    Container(
                      width: 65.0,
                      height: 65.0,
                      padding: EdgeInsets.all(defaultPadding / 2.0),
                      margin: EdgeInsets.symmetric( vertical: size.height * 0.02, ),
                      decoration: BoxDecoration(
                        color: customBackgroundColor,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow( offset: Offset( 0.0, 10.0), blurRadius: 25, color: customPrimaryColor.withOpacity(0.25), ),
                          BoxShadow( offset: Offset(-15, -15), blurRadius: 20, color: Colors.white, ),
                        ],
                      ),
                      child: Icon( Icons.water_drop_rounded , color: customPrimaryColor,),
                      // child: SvgPicture.asset(icon),
                    )

                  ],
                ),
              ),
            ),
            Container(
              width: size.width * 0.73,
              height: size.height * 0.98,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  alignment: Alignment.centerLeft,
                  image: AssetImage("assets/images/plant10.jpeg",),
                ),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(65.0), bottomLeft: Radius.circular(65.0),),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0.0, 10.0), blurRadius: 60.0, color: customPrimaryColor.withOpacity(0.29),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}