import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:plant_app/Screens/Constants.dart';
import 'package:plant_app/Widgets/Custom_Featured_Plants.dart';
import 'package:plant_app/Widgets/Custom_Header_With_Search_Box.dart';
import 'package:plant_app/Widgets/Custom_Title_With_Button.dart';
import 'package:plant_app/Widgets/Featured_Plants.dart';
import 'package:plant_app/Widgets/Recommended_Plants.dart';

class Custom_Body extends StatelessWidget {
  const Custom_Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget> [
          Custom_Header_With_Search_Box(size: size),
          Custom_Title_With_Button(title: 'Recommended', isFrameSizeMax: true, press: (){}, ),
          Recommended_Plants(),
          Custom_Title_With_Button(title: 'Featured Plants', isFrameSizeMax: true, press: (){},),
          Custom_Featured_Plants(),
          SizedBox(height: defaultPadding,),
        ],
      ),
    );
  }
}
