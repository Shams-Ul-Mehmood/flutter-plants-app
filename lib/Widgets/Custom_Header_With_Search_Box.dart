import 'package:flutter/material.dart';

import '../Screens/Constants.dart';

class Custom_Header_With_Search_Box extends StatelessWidget
{
  final Size size;

  const Custom_Header_With_Search_Box({super.key, required this.size});

  @override
  Widget build(BuildContext buildContext)
  {
    return Container(
      margin: EdgeInsets.only(bottom: defaultPadding * 2.5,),
      height: size.height * 0.2,
      // color: Colors.black87,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only( left: defaultPadding, right: defaultPadding, bottom: defaultPadding + 36.0, ),
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
              color: customPrimaryColor,
              borderRadius: BorderRadius.only( bottomLeft: Radius.circular(40.0), bottomRight: Radius.circular(40.0) ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hi Uishopy", style: Theme.of(buildContext).textTheme.headline5!.copyWith(color: Colors.white, fontWeight: FontWeight.bold),),
                Spacer(),
                IconButton(onPressed: (){}, icon: Icon(Icons.account_circle, color: Colors.white, size: 50.0,)),
              ],
            ),
          ),
          Positioned(
            left: 0.0,
            right: 0.0,
            bottom: 0.0,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: defaultPadding),
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              alignment: Alignment.center,
              height: 57.0,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 50.0,
                    offset: Offset(0.0,10.0),
                    color: customPrimaryColor.withOpacity(0.23),
                  ),
                ],
                borderRadius: BorderRadius.circular(25.0),
              ),
              child:
              // Row(
              //   children: [
              //     Expanded(
              //         child: TextField(
              //              decoration: InputDecoration(
              //               hintText: "Search",
              //               hintStyle: TextStyle( color: customPrimaryColor.withOpacity(0.5), ),
              //               enabledBorder: InputBorder.none,
              //               focusedBorder: InputBorder.none,
              //                // suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.search_outlined, color: customPrimaryColor.withOpacity(0.23),),)
              //               // suffixIcon: IconButton( onPressed: (){}, icon: SvgPicture.asset("assets/icons/"), color: customPrimaryColor.withOpacity(0.23), ),
              //              ),
              //           onChanged: (value){
              //
              //           },
              //         ),
              //     ),
              //     SvgPicture.asset("assets/icons/"),
              //   ],
              // ),
              TextField(
                onChanged: (value){

                },
                decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle( color: customPrimaryColor.withOpacity(0.5), ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.search_outlined, color: customPrimaryColor.withOpacity(0.23),),)
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}