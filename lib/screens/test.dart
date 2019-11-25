import 'package:auth_screen/constant.dart';
import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black12,
        alignment: Alignment.center,
        padding: EdgeInsets.all(20),
        child: new MyInputFiled(
          hint: "Password",
          inputIcon: Icons.person_outline,
        ),
      ),
    );
  }
}

class MyInputFiled extends StatelessWidget {
  const MyInputFiled({
    @required this.hint,
    @required this.inputIcon,
    this.borderRadious = 40.0,
    this.keybord = TextInputType.text,
    this.iconColor = kPrimary,
    this.isPass = false,
  });

  final double borderRadious;
  final String hint;
  final TextInputType keybord;
  final IconData inputIcon;
  final Color iconColor;
  final bool isPass;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(borderRadious),
        ),
        boxShadow: [
          BoxShadow(
            color: kShadow,
            offset: Offset(0, 6),
            blurRadius: 20.0,
          )
        ],
      ),
      child: TextField(
        obscureText: isPass,
        keyboardType: keybord,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
        decoration: InputDecoration(
          counterStyle: TextStyle(
            fontSize: 30,
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          suffixIcon: Icon(
            inputIcon,
            color: iconColor,
          ),
          hintText: hint,
          hintStyle: TextStyle(
            fontSize: 16,
            color: Colors.black38,
          ),
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(borderRadious),
            ),
          ),
        ),
      ),
    );
  }
}
