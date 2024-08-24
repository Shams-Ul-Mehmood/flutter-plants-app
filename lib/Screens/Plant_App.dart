import 'package:flutter/material.dart';
import 'package:plant_app/Screens/Constants.dart';
import 'package:plant_app/Screens/Home_Screen.dart';

class Plant_App extends StatelessWidget
{
  @override
  Widget build(BuildContext buildContext)
  {
    return MaterialApp(
      color: Colors.green,
      debugShowCheckedModeBanner: false,
      title: "Plant App",
      theme: ThemeData(
        primarySwatch: Colors.green,
        textTheme: Theme.of(buildContext).textTheme.apply(bodyColor: customTextColor),
        scaffoldBackgroundColor: customBackgroundColor,
      ),
      home: Home_Screen(),
    );
  }
}