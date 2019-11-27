import 'package:auth_screen/widgets/gradientButton.dart';
import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black12,
        alignment: Alignment.center,
        padding: EdgeInsets.all(20),
        child: GradiantButton(
          text: "Test",
          icon: Icons.arrow_left,
        ),
      ),
    );
  }
}
