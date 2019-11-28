import 'package:auth_screen/constant.dart';
import 'package:auth_screen/widgets/gradientButton.dart';
import 'package:auth_screen/widgets/inputFiled.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Login01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        color: kBackground01,
        height: screenHeight,
        width: screenWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            heading(screenWidth),
            SizedBox(
              height: 50,
            ),
            MyInputFiled(
              hint: "Username",
              inputIcon: Icons.person_outline,
            ),
            SizedBox(
              height: 20,
            ),
            MyInputFiled(
              hint: "Password",
              isPass: true,
              inputIcon: Icons.lock_outline,
              iconColor: Color(0xFF4AD284),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                "Forgot Password?",
                // textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 12,
                  decoration: TextDecoration.none,
                  color: Color(0xFF757575).withOpacity(.5),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: GradiantButton(
                text: "Sign In",
                icon: Icons.arrow_forward,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: "Don’t have an account? ",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF757575).withOpacity(.5),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "Sign Up".toUpperCase(),
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: kPrimary),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }

  Container heading(double screenWidth) {
    return Container(
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
    );
  }
}
