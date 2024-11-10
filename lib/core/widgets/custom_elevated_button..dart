import 'package:flutter/material.dart';

import '../utils/styles.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.backgroundColor,
    required this.text,
    required this.borderRadius,
    required this.textColor,
    this.onPressed,
  });
  final Color backgroundColor;
  final Color textColor;
  final String text;
  final BorderRadiusGeometry? borderRadius;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(15),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(color: textColor),
        ),
      ),
    );
  }
}
