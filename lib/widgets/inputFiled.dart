import 'package:auth_screen/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyInputFiled extends StatelessWidget {
  const MyInputFiled({
    @required this.hint,
    @required this.inputIcon,
    this.borderRadious = 40.0,
    this.keybord = TextInputType.text,
    this.iconColor = kPrimary,
    this.isPass = false,
    this.format,
  });

  final double borderRadious;
  final String hint;
  final TextInputType keybord;
  final IconData inputIcon;
  final Color iconColor;
  final bool isPass;
  final List<TextInputFormatter> format;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
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
          inputFormatters: format,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
          decoration: InputDecoration(
            counterStyle: TextStyle(
              fontSize: 30,
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
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
      ),
    );
  }
}
