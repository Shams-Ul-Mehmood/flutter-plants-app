import 'package:flutter/material.dart';
import 'package:plant_app/Screens/Constants.dart';
import 'package:plant_app/Widgets/Custom_AppBar.dart';
import 'package:plant_app/Widgets/Custom_Body.dart';
import 'package:plant_app/Widgets/Custom_Bottom_Navigation_Bar.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: Custom_Body(),
      bottomNavigationBar: Custom_Bottom_Navigation_Bar(),
    );
  }
}
