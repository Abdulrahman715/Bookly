import 'package:flutter/material.dart';
import 'package:my_bookly_main/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    required this.text,
    this.borderRadius,
  });

  final Color backgroundColor;
  final Color textColor;
  final String text;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: textColor,
        shape:  RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(14),
        ),
      ),
      onPressed: () {},
      child: Text(text, style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold)),
    );
  }
}
