import 'package:auth_screen/constant.dart';
import 'package:flutter/material.dart';

class Login01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      color: kBackground01,
      height: screenHeight,
      width: screenWidth,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: screenHeight * .3,
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  width: screenWidth,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(text: "hello! \n\n", style: kHeading01),
                        TextSpan(
                          text:
                              "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy",
                          style: TextStyle(
                            fontSize: 17,
                            color: Color(0xFF4A69FF),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20, left: 20, right: 20, bottom: 10),
                  child: Column(
                    children: <Widget>[
                      Material(
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
