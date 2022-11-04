import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.description,
    this.borderColor,
    required this.textColor,
    required this.buttonColor,
    required this.whenClikced,
    Key? key,
  }) : super(key: key);

  final String description;
  final Color buttonColor;
  final Color? borderColor;
  final Color textColor;
  final Function() whenClikced;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:
        whenClikced
      ,
      child: Ink(
        width: 150,
        height: 70,
        decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(10),
            border: borderColor != null ? Border.all(color:borderColor! , width: 1):null),
        child: Center(
          child: Text(
            description,
            style: TextStyle(
                fontSize: 15, color: textColor, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
