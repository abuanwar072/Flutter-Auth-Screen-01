import 'package:flutter/material.dart';
import 'package:auth_screen/constant.dart';

class GradiantButton extends StatelessWidget {
  GradiantButton({this.radious = 50, @required this.text, @required this.icon});

  final double radious;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {},
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radious),
      ),
      padding: EdgeInsets.all(0),
      child: Container(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radious),
            gradient: LinearGradient(
              colors: kButtonGradiant,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                "$text",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              SizedBox(
                width: 9,
                child: Icon(
                  icon,
                  size: 18,
                  color: Colors.white,
                ),
              )
            ],
          )),
    );
  }
}
