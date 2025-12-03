import 'package:first/core/constants/color.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  Widget? child;
  CustomButton({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 13),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.center,
          end: Alignment.centerRight,
          colors: [pinkColor, redColor],
        ),
        boxShadow: [
          BoxShadow(
            color: redColor.withOpacity(0.4),
            offset: Offset(0, 4),
            blurRadius: 10,
          ),
        ],
        borderRadius: BorderRadius.circular(6),
      ),

      alignment: Alignment.center,
      child: child,
    );
  }
}
