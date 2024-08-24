import 'package:flutter/material.dart';

import '../Screens/Constants.dart';
import 'Custom_Title_With_Under_Line.dart';

class Custom_Title_With_Button extends StatelessWidget {
  final String title;
  final bool isFrameSizeMax;
  final Function press;

  Custom_Title_With_Button({super.key, required this.title, required this.press, required this.isFrameSizeMax});

  @override
  Widget build(BuildContext buildContext) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: defaultPadding,
      ),
      child: Row(
        children: [
          Custom_Title_With_Under_Line(
            text: title,
          ),
          Spacer(),
          GestureDetector(
            onTap: (){},
            child: Container(
              width: MediaQuery.of(buildContext).size.width / 6,
              height: MediaQuery.of(buildContext).size.height / 26,
              decoration: BoxDecoration(
                color: customPrimaryColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              child: Center(
                child: Text(
                  "more",
                  style: TextStyle(
                    color: customBackgroundColor,
                    fontSize: this.isFrameSizeMax ? 20.0 : 10.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
