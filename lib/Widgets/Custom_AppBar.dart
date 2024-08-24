
import 'package:flutter/material.dart';

import '../Screens/Constants.dart';

AppBar customAppBar()
{
  return AppBar(
    elevation: 0.0,
    // leading: IconButton( onPressed: (){}, icon: SvgPicture.asset("assets/icons/"),),
    leading: IconButton( onPressed: (){}, icon: Icon(Icons.menu, color: Colors.white,) ,),
    backgroundColor: customPrimaryColor,
  );
}